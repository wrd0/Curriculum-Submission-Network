<div class="whitebox" style="padding-bottom:200px;">
			
		<div class="whitebox" style="width:90%;text-align:center">
		
				<div class="memberbox" style="background-color:#EEE;">
					<a href="index.php?load=profile&user=<?=$user['username'];?>">
					<img style="width:260px" src="<?=BASEPATH ?>img/prof/<?=$user['profilepic']?>"/>
					</a>
					<div style="margin-top:8px;text-align:left">
					<p><b><i><?=$user['email'];?></b></i></p>
					<p><?php echo $user['firstname']." ".$user['lastname'];?></p>	
					 	
					 	 <?php
                          foreach($user_groups as $ugroup){

                            if($ugroup['chair']==$user['user_id'])
                              echo "<p style=\"background-image:url('".BASEPATH."img/crown2.png');padding:2px 0 0 18px\">Chair of <a href='index.php?load=group&page=".$ugroup['group_url']."'>".$ugroup['name']."</a> since ".$ugroup['chair_since']."</p>";
                            else
                              echo "<p style=\"background-image:url('".BASEPATH."img/group.png');padding:2px 0 0 18px\">Member of <a href='index.php?load=group&page=".$ugroup['group_url']."'>".$ugroup['name']."</a> since ".$ugroup['since']."</p>";
                          }?>

					</div>
				</div>

				<div class="memberbox" style="display:block;border:0">
						<?php  foreach($comments as $comment){ ?>

								<div class="pinprof pincomment" style="text-align:left;border-bottom:1px #CCC solid">
								 <a href="index.php?load=profile&user=<?=$comment['username'];?>">
		                        	<img src="<?=BASEPATH ?>img/prof/<?=$comment['profilepic'];?>" />                           
		                            <?php echo $comment['firstname']." ".$comment['lastname'];?></a>                            
		                            <p style="color:#333"><?=$comment['comment'];?></p>
		                            <p><?=$comment['datetime'];?><!-- - <a href="">Like</a>--></p>               
		                    	</div>

		                <?php } ?>

		            	<div class="pinprof pincomment" style="text-align:left;border-bottom:1px #CCC solid">
		            			<a href="index.php?load=profile&user=<?=$_SESSION['username'];?>">
		                    	<img src="<?=BASEPATH ?>img/prof/<?=$_SESSION['profilepic'];?>" />
		                        <?php echo $_SESSION['firstname']." ".$_SESSION['lastname'];?></a>

		                        <form action="index.php?load=profile/postcomment/" method="post">
		                        <textarea rows="3" name="comment" placeholder="Write a comment" required></textarea>
		                        <input type="hidden" name="anchor" value="<?=$user['user_id'];?>"/>
		                        <input type="hidden" name="type" value="2"/>
		                        <input type="submit" value="post"/>
		                        </form>
		                </div>    
				</div>				
		</div>
</div>