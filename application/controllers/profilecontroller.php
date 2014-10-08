<?php
 
class ProfileController extends Controller
{
    public function __construct($model, $action)
    {
        parent::__construct($model, $action);
        session_start();
        $this->loadModel('usermodel','users');
        $this->loadModel('groupmodel','groups');
    }
     
    public function index()
    {        
        if(!isset($_SESSION['username'])){ //if user is not logged in redirect to login
            header("Location: index.php?load=login");
            die();
        }

        if(isset($_GET['user'])){

            $uname = $_GET['user'];
            $data = array();
            $data['user'] = $this->users->getUser($uname);

           if($data['user'] != false){

                $data['user_groups'] = $this->groups->getGroups($data['user']['user_id']);
                $data['comments'] = $this->users->getProfileComments($data['user']['user_id']);
                $data['title'] = $data['user']['firstname']." ".$data['user']['lastname'];
                $this->loadView('partials/head_nav_menu',$data);
                $this->loadView('profile',$data);
                $this->loadView('partials/footer');

            }else{
               header("Location: index.php?load=home"); //if user_id is invalid go home
            }

        }else{
            header("Location: index.php?load=home"); //if no user_id supplied go home
        }
    }

    public function postComment(){
        if($this->users->postProfileComment($_SESSION['user_id'],$_POST['anchor'],$_POST['comment'],$_POST['type']))
            header('Location: ' . $_SERVER['HTTP_REFERER']);
        else echo '<h1>An error ocurred while posting your comment, please try again later</h1>';
    }

}