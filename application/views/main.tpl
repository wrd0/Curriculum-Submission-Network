          
          <div id='columns'>
          
          <?php  if(count($pins)==0){
                    echo "<div style='padding-bottom:1200px;text-align:center'></div>";
                 }

                for($pair = 0; $pair < 2; $pair++)
                for($i=(0+$pair); $i < count($pins); $i+=2){ ?>

                    <div class="pin" style="-webkit-order:<?=$i+1?>;">
                        <div class="pinprof">
                            <a href="index.php?load=profile&user=<?=$pins[$i]['username']?>">
                            <img src="<?=BASEPATH ?>img/prof/<?=$pins[$i]['profilepic']?>" />                        
                            <div style="display:inline-block">
                                <?=$pins[$i]['firstname']." ".$pins[$i]['lastname']?></a> &#9658; <a href="#">Comittee</a>
                                <p><?=$pins[$i]['datetime']?></p>
                        </div>
                    </div>

                     <a href="index.php?load=document&doc=<?=$pins[$i]['submission_id'];?>">
                         <div style="text-align:right;position:relative;overflow:hidden">
                                  <h2><?=$pins[$i]['type_name']?></h2>
                                  <h1><?=$pins[$i]['title']?></h1>
                                  <h4><?=$pins[$i]['description']?></h4>
                                  <h3 class="blue">Status: In progess</h3>
                                  <h3 class="green">Approved by Dean</h3>
                                  <h3 class="red">Pending approval of </h3>
                         </div>
                     </a>

                     <div class="separator" style="margin:10px 0 10px 0;width:100%" ></div>

                     <?php foreach($pins[$i]['comments'] as $comment){ ?>
                        <div class="pinprof pincomment">
                            <a href="index.php?load=profile&user=<?=$comment['username'];?>">
                            <img src="<?=BASEPATH ?>img/prof/<?=$comment['profilepic'];?>" />                                     
                                <?php echo $comment['firstname']." ".$comment['lastname'];?></a>
                                <span style="color:#333"><?=$comment['comment'];?></span>
                                <p><?=$comment['datetime'];?><!-- - <a href="">Like</a>--></p>               
                        </div>
                    <?php } ?>

                        <div class="pinprof pincomment" style="text-align:left;border-bottom:1px #CCC solid">
                                <a href="index.php?load=profile&user=<?=$_SESSION['username'];?>">
                                <img src="<?=BASEPATH ?>img/prof/<?=$_SESSION['profilepic'];?>" />
                                <?php echo $_SESSION['firstname']." ".$_SESSION['lastname'];?></a>

                                <form action="index.php?load=profile/postcomment/" method="post">
                                <textarea rows="3" name="comment" placeholder="Write a comment" required></textarea>
                                <input type="hidden" name="anchor" value="<?=$pins[$i]['submission_id'];?>"/>
                                <input type="hidden" name="type" value="1"/>
                                <input type="submit" value="Post"/>
                                </form>
                        </div>

                </div>
              <?php } ?>
          </div>