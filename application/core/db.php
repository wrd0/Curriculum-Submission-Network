<?php
 
class Db
{
    private static $db;
     
    public static function init()
    {
        if (!self::$db)
        {
            try {                
                self::$db = new PDO(DB_DRIVER.':host='.DB_HOSTNAME.';dbname='.DB_DATABASE, DB_USERNAME, DB_PASSWORD);
                self::$db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
                self::$db->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
            } catch (PDOException $e) {
                die('Connection error: ' . $e->getMessage());
            }
        }
        return self::$db;
    }
}