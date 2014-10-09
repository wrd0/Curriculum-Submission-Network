<?php

$controller = DEFAULT_CONTROLLER;
$action = "index";
$query = null;
 
if (isset($_GET['load'])){

    $params = array();
    $params = explode("/", $_GET['load']);
 
    $controller = ucwords($params[0]);
     
    if (isset($params[1]) && !empty($params[1])){
        $action = $params[1];
    }     
    if (isset($params[2]) && !empty($params[2])){
        $query = $params[2];
    }
}
 
$className = $controller."Controller";
$load = new $className();
 
if (method_exists($load, $action)){
    $load->$action($query);
}
else{
    die('Invalid URL');
}