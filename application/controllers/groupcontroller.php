<?php
 
class GroupController extends Controller
{
    public function __construct()
    {
        parent::__construct();
        session_start();
        $this->loadModel('groupmodel','groups');
    }
     
    public function index()
    {        
        if(!isset($_SESSION['username'])){ //if user is not logged in redirect to login
            header("Location: index.php?load=login");
            die();
        }

        $data = array();
        $data['title'] = "Groups";
        $this->loadView('partials/head_nav_menu',$data);

        if(isset($_GET['page'])){
            
            $data['page_group'] = $this->groups->getGroup($_GET['page']);
            if($data['page_group']!=false){
                $data['title'] = $_GET['page'];                
                $data['page_group'] = $this->groups->getGroup($_GET['page']);
                $data['members'] = $this->groups->getMembers($data['page_group']['group_id']);
                $data['chair'] = $this->groups->getChair($data['page_group']['group_id']);
                
                $this->loadView('group',$data);
            }else{
                 $data['error'] = true;
                 $data['group_list'] = $this->groups->getGroupList();
                 $this->loadView('group_list',$data);
            }
        }else{
            $data['group_list'] = $this->groups->getGroupList();
            $this->loadView('group_list',$data);
        }

        $this->loadView('partials/footer');
    }

}