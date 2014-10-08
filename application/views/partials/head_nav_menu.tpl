<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title><?=$title; ?></title>
        <meta name="viewport" content="width=device-width" />
        
        <link rel="stylesheet" href="<?=BASEPATH ?>/css/blue.css" />
        <link rel="shortcut icon" href="favicon.ico" type="image/x-icon"/> 
        <script src="<?=BASEPATH ?>/js/menu_toggle.js"></script>       
    </head>
    <body>

        <!-- topbar -->        
        <div id="blackbar" style="background-image: url('<?=BASEPATH ?>/img/banner.png');">
        <div class="center" style="height:50px;max-width:98%">            
            <a href="#">
            <img id="menu_button" onclick="showhide_menu()" class="left" src="<?=BASEPATH ?>/img/menubutton_xsp.png" /></a>
            <a href="#">
            <img class="abs_center" src="<?=BASEPATH ?>/img/mrusilver_head.png" style="width:100px"/></a>
            <a href="index.php?load=login/logout">
            <img class="right" src="<?=BASEPATH ?>/img/logout_xs.png" /></a>
            <img class="right" src="<?=BASEPATH ?>/img/world_xs.png" />
            <a href="index.php?load=home">
            <img class="right" src="<?=BASEPATH ?>/img/home.png" />
        </div>
        </div>

        <div id="contenedor">

          <div id="menu" > <!-- menu common to all pages -->
            <div id="profile" class="menuprof">
                <a href="index.php?load=profile&user=<?=$_SESSION['username'];?>">
                <img id="profilepic" src="<?=BASEPATH ?>img/prof/<?=$_SESSION['profilepic']?>"/>
                </a>            
                 <p><b><i><?=$_SESSION['email'];?></b></i></p>
                 <p><?php echo $_SESSION['firstname']." ".$_SESSION['lastname'];?></p>
                 <?php
                          foreach($_SESSION['groups'] as $group){
                            if($group['chair']==$_SESSION['user_id'])
                              echo "<p style=\"background-image:url('".BASEPATH."img/crown2.png');padding:2px 0 0 18px\">Chair of <a href='index.php?load=group&page=".$group['group_url']."'>".$group['name']."</a></p>";
                            else
                              echo "<p style=\"background-image:url('".BASEPATH."img/group.png');padding:2px 0 0 18px\">Member of <a href='index.php?load=group&page=".$group['group_url']."'>".$group['name']."</a></p>";
                          }
                 ?>
              <div class="separator" style="margin-bottom:0;"></div> 
              <ul>
                  <li><a href="index.php?load=home">Home</a></li>
                  <li><a href="index.php?load=group">Groups</a></li>
                  <li><a href="index.php?load=submission&action=new">New Submission</a></li>
                  <li><a href="index.php?load=submission&action=me">My Submissions</a></li>
                  <li><a href="index.php?load=submission">Browse Submissions</a></li>
                  <li><a href="#">Help</a></li>
                  <li><a href="#">About</a></li>
                  <li><a href="index.php?load=login/logout">Log out</a></li>
              </ul>
            </div>            
          </div> 
         
          <div id="contenido"> <!-- actual content of the page -->