<?php
 
class View
{
    protected $_file;
     
    public function __construct($file)
    {
        $this->_file = $file;
    }
     
    public function output($_data)
    {
        if (!file_exists($this->_file))
        {
            throw new Exception("File " . $this->_file . " doesn't exist.");
        }
        
        if(isset($_data))
            extract($_data);
        
        ob_start();
        include($this->_file);
        $output = ob_get_contents();
        ob_end_clean();
        echo $output;
    }
}