<?php
 
class HomeController extends Controller
{
    public function __construct($model, $action)
    {
        parent::__construct($model, $action);
        session_start();
        $this->loadModel('usermodel','users');
        $this->loadModel('groupmodel','groups');
        $this->loadModel('submissionmodel','subs');
    }
     
    public function index()
    {
        if(!isset($_SESSION['username'])){ //if user is not logged in redirect to login
            header("Location: index.php?load=login");
            die();
        }

        $data = array();        
        $data['title'] = 'Home';

        if(!isset($_SESSION['groups'])){
            $_SESSION['groups'] = $this->groups->getGroups($_SESSION['user_id']);
            //we're gonna be needing this in everypage so we better save it in session data
        }

        $data['pins'] = $this->subs->getAllSubmissions();
        foreach ($data['pins'] as $key => $sub) {
            $data['pins'][$key]['comments'] = $this->subs->getSubmissionComments($data['pins'][$key]['submission_id']);
        }

        $this->loadView('partials/head_nav_menu',$data);
        $this->loadView('main',$data);
        $this->loadView('partials/footer');
    }

}