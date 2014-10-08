<?php
 
class LoginController extends Controller
{
    public function __construct($model, $action)
    {
        parent::__construct($model, $action);       
        $this->loadModel('usermodel','users');
    }
     
    public function index()
    {
        $data = array();        
        $data['title'] = 'Login';

        if(isset($_POST['username']) && isset($_POST['password'])){
            $data['username'] = $_POST['username'];
            $data['password'] = $_POST['password'];

            session_start();
            if($this->checkUser($data['username'],md5($data['password'])) == false)
                $data['error'] = true;
            else{
                header('Location: index.php?load=home');
                die();
            }
        }

        $this->loadView('login',$data);
    }

    //authenticates the user and creates session variables
    public function checkUser($username, $password){
        $return_value = false;

        $result = $this->users->getUser($username,$password);
        if($result != false){           
            $_SESSION['user_id'] = $result['user_id'];
            $_SESSION['username'] = $result['username'];
            $_SESSION['firstname'] = $result['firstname'];
            $_SESSION['lastname'] = $result['lastname'];
            $_SESSION['email'] = $result['email'];
                if(is_null($result['profilepic']))
                    $_SESSION['profilepic'] = "null.jpg";
                else  $_SESSION['profilepic'] = $result['profilepic'];

            $return_value = true;
        }

        return $return_value;
    }

    public function logout(){
        session_start();
        session_destroy(); 

        header('Location: index.php?load=home');       
        die();
    }

}