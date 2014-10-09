<?php
 
class GroupModel extends Model
{   
    /**
     * Returns all(if any) of the groups the current user is in.
     * @param $user_id 
     * @return Row Array (PDOQuery->fetchAll())
     */
    public function getGroups($user_id){
        $sql = "SELECT DISTINCT assignment1.group.group_id,name,chair,democratic,since,chair_since FROM assignment1.group
                LEFT JOIN group_users ON assignment1.group.group_id = group_users.group_id
                WHERE user_id = ? OR chair = ?";
             /*"SELECT DISTINCT assignment1.group.group_id,name,chair,democratic,since,chair_since from group_users
                INNER join assignment1.group on assignment1.group.group_id = group_users.group_id
                INNER join users on chair = users.user_id
                where assignment1.group_users.user_id = ? or chair = ?";*/
        
        $groups = $this->getAll($sql, array($user_id,$user_id));

        //Generate the group url by appending the lowercase group name without spaces with the group id
        foreach($groups as $key => $group){
            $groups[$key]['group_url'] = $this->stringToLowerNoSpace($group['name']).$group['group_id'];
        }
        
        return $groups;
    }

    /**
     * Returns (if any) the group referenced by the url (group_id)
     * @param $group_url
     * @return Row (PDOQuery->fetch())
     */
    public function getGroup($group_url){
        $group_id = preg_replace("/[^0-9]/", "", $group_url); //extracts the groupId from url
        $sql = "SELECT * FROM assignment1.group WHERE group_id = ?";
        $group = $this->getRow($sql, array($group_id));

        // seems ugly but it checks that the prefix of the url is correct - (temporal)
        if($group!=false){
            if(preg_replace("/[0-9]/", "", $group_url)==$this->stringToLowerNoSpace($group['name']))
                 return $group;
             else
                 return $false;
         }

         return $group;        
    }

     /**
     * Returns (if any) all the groups available
     * @return Row Array (PDOQuery->fetchAll())
     */
    public function getGroupList(){
        $sql = "SELECT group_id,name,description FROM assignment1.group";
        $groups = $this->getAll($sql);

        foreach($groups as $key => $group){
            $groups[$key]['group_url'] = $this->stringToLowerNoSpace($group['name']).$group['group_id'];
        }

        return $groups;
    }

    /**
     * Returns (if any) the members of the referenced group
     * @param $group_id
     * @return Row Array (PDOQuery->fetchAll())
     */
    public function getMembers($group_id){
        $sql = "SELECT users.user_id,username,firstname,lastname,email,profilepic,since FROM group_users 
                INNER JOIN users ON users.user_id = group_users.user_id
                WHERE group_id = ?";

        return $this->getAll($sql, array($group_id));
    }

    /**
     * Returns the chair of the group
     * @param $group_id
     * @return Row (PDOQuery->fetch())
     */
    public function getChair($group_id){
        $sql = "SELECT username,firstname,lastname,email,profilepic,chair_since FROM assignment1.group 
                INNER JOIN users ON assignment1.group.chair = users.user_id
                WHERE group_id = ?";

        return $this->getRow($sql, array($group_id));
    }

    public function stringToLowerNoSpace($string){
        return  preg_replace('/\s+/', '', strtolower($string));
    }

}