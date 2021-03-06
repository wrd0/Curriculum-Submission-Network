<?php
 
class UserModel extends Model
{
    /**
     * Description Returns all available users
     * @return type Row Array (PDO->fetchAll()), false if empty
     */
    public function getUsers()
    {
        $sql = "SELECT * FROM users";  
        return  $this->getAll($sql);
    }

     /**
     * Description:
     * Given a username/email and a password:
     *   Returns the row that matches the email || username and the password
     * Given just a username:
     *   Returns the user referred by the username
     * @param $username (username or email) and $password (MD5 hash)
     * @return type Row (PDO->fetch()), false if not found
     */
    public function getUser($username, $password = NULL){

        $user = NULL;

        if(isset($password)){
            $sql = "select user_id,username,firstname,lastname,email,profilepic 
                    from users where (username = ? or email = ?) and password = ?";
            $user = $this->getRow($sql, array($username,$username,$password));
        }else{
            $sql = "select user_id,username,firstname,lastname,email,profilepic 
                    from users where username = ?";
            $user = $this->getRow($sql, array($username));
        }        
        
        return $user;
    }

    /**
     * Description Gets all the user profile comments
     * @param type $user_id
     * @return type row array
     */
     public function getProfileComments($user_id){
        $sql = "SELECT username,firstname,lastname,profilepic,comment_id,comment,datetime FROM comment 
                INNER JOIN users ON users.user_id = comment.user_id 
                WHERE comment_type = 2 and anchor_id = ? ORDER BY comment_id ASC";
         
        return  $this->getAll($sql, array($user_id));
    }

    public function postProfileComment($user_id,$anchor_id,$comment,$type){
        $sql = 'INSERT INTO comment(user_id,anchor_id,comment_type,comment,datetime) 
                VALUES (?,?,?,?,?)';
        $query = $this->db->prepare($sql);
        if($query->execute(array($user_id,$anchor_id,$type,$comment,date("Y-m-d H:i:s"))))
            return true;
        else
            return false;
    }

}