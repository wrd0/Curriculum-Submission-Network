<?php
 
class Controller
{
    protected $_model = array();
     
    public function __construct(){}
     
    protected function loadModel($modelName,$name)
    {        
       $this->_model[$name] = new $modelName();
    }

    protected function useModel($name){
        return $this->_model[$name];
    }

    function __get($name) {
    return array_key_exists($name, $this->_model) ? $this->_model[$name] : null;
    }

    function __set($name, $value) {
    $this->_model[$name] = $value;
    }
     
    protected function loadView($viewName, $vals = NULL)
    {
        $view = new View(HOME.DS.'views'.DS.$viewName.'.tpl');
        $view->output($vals);
    }
}