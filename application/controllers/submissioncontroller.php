<?php 
class SubmissionController extends Controller
{
    public function __construct($model, $action)
    {
        parent::__construct($model, $action);

        session_start();
         if(!isset($_SESSION['username'])){ //if user is not logged in redirect to login
            header("Location: index.php?load=login");
            die();
        }

        $this->loadModel('submissionmodel','subs');
        $this->loadModel('groupmodel','group');
    }
     
    public function index()
    {        

        $data = array();
        $data['title'] = "Submissions";
        $this->loadView('partials/head_nav_menu',$data);

        if(isset($_GET['action'])){

                if($_GET['action'] == "new"){
                    $data['title'] = "New Submission";
                    $data['all_groups'] = $this->group->getGroupList();
                    $this->loadView('new_submission',$data);
                }

                else if($_GET['action'] == "me"){
                    $data['title'] = "My Submissions";
                    $data['pins'] = $this->subs->getSubmissions($_SESSION['user_id']);

                    foreach ($data['pins'] as $key => $sub) {
                        $data['pins'][$key]['steps'] = $this->subs->getStepsToSubmission($data['pins'][$key]['group_id'],$data['pins'][$key]['type']);
                    }

                    $this->loadView('my_submissions',$data);
                }

        }else{
            $data['submission_list'] = $this->subs->getAllSubmissions();
            $this->loadView('submission_list',$data);
        }

        $this->loadView('partials/footer');
    }

    public function newSubmission(){
        if(isset($_POST)){
            $status = (($_POST['action']=="Save+as+draft")?"0":"1");
            if($this->subs->newSubmission($_SESSION['user_id'],$_POST['title'],$_POST['description'],$_POST['document'],$_POST['group'],$_POST['sub_type'],$status))
                header('Location: ' . $_SERVER['HTTP_REFERER']);
            else echo '<h1>An error ocurred while submitting your submission, please try again later</h1>'; //yo dawg
        }
    }


}