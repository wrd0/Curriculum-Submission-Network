<?php 
class SubmissionModel extends Model
{
    public function getSubmissions($user_id)
    {
        $sql = "SELECT * FROM submission WHERE user_id = ?";     
        $query = $this->db->prepare($sql);
        $query->execute(array($user_id));
         
        return  $query->fetchAll();
    }

    public function getAllSubmissions()
    {
        $sql = "SELECT submission_id,submission.user_id,username,firstname,lastname,title,submission.description,type_name,datetime,profilepic FROM submission 
                INNER JOIN users ON users.user_id = submission.user_id
                INNER JOIN type ON submission.type = id_type
                WHERE status > 0 ORDER BY submission_id DESC";
        $query = $this->db->prepare($sql);
        $query->execute();
         
        return  $query->fetchAll();
    }

    public function newSubmission($user_id,$title,$desc,$doc,$group,$type,$status){
        $sql = 'INSERT INTO submission(user_id,title,description,document,group_id,type,datetime,status,step) 
                VALUES (?,?,?,?,?,?,?,?,?)';
        $query = $this->db->prepare($sql);
        if($query->execute(array($user_id,$title,$desc,$doc,$group,$type,date("Y-m-d H:i:s"),$status,'0')))
            return true;
        else
            return false;
    }

    public function getSubmissionComments($id){
        $sql = "SELECT username,firstname,lastname,profilepic,comment_id,comment,datetime FROM comment 
                INNER JOIN users ON users.user_id = comment.user_id 
                WHERE comment_type = 1 and anchor_id = ? ORDER BY comment_id ASC";
        $query = $this->db->prepare($sql);
        $query->execute(array($id));
         
        return  $query->fetchAll();
    }

    public function getStepsToSubmission($group_id,$type){
        $sql = "SELECT sequence,group.name as faculty,type_name,flow_step.name,flow_step.description FROM flow_step_seq 
                INNER JOIN flow ON flow_step_seq.flow_id = flow.flow_id
                INNER JOIN assignment1.type on flow.type = assignment1.type.id_type
                INNER JOIN assignment1.group on assignment1.group.group_id = flow.group_id
                INNER JOIN flow_step ON step_id = flow_step_id
                WHERE group.group_id = ? and type.id_type = ?
                ORDER BY sequence";
        $query = $this->db->prepare($sql);        
        $query->execute(array($group,$type));
         
        return  $query->fetchAll();
    }

} 