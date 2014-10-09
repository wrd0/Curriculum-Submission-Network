<?php
 
class Model 
{
    protected $db;
     
    public function __construct()
    {
        $this->db = Db::init();
    }
 
    public function getAll($sql, $data = null)
    {
        if(!sql){
            throw new Exception("No SQL query!");
        }         
        $query = $this->db->prepare($sql);
        $query->execute($data);
        return $query->fetchAll();
    }
     
    public function getRow($sql, $data = null)
    {
        if(!sql){
            throw new Exception("No SQL query!");
        }         
        $query = $this->db->prepare($sql);
        $query->execute($data);
        return $query->fetch();
    }

}