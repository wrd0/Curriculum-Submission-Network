<div class="whitebox" style="padding-bottom:200px;">
	
		<h2><?=$page_group['name']?></h2>

		<p><?=$page_group['description'];?></p>

		<div class="whitebox" style="width:90%">
			<h4>Current members:</h4>

				<a href="index.php?load=profile&user=<?=$chair['username'];?>">
				<div class="memberbox" style="background-color:#DFDFDF;padding-right:28px">
					<img style="padding-left:14px;" src="<?=BASEPATH ?>img/prof/<?=$chair['profilepic']?>"/>					
					<div style="margin-top:8px">
					 <p><b><i><?=$chair['email'];?></b></i></p>
					 <p><?php echo $chair['firstname']." ".$chair['lastname'];?></p>	
					 <p style="background-image:url('<?=BASEPATH?>img/crown2.png');padding:2px 0 0 18px">
						 Chair since <i><?=$chair['chair_since']?></i>
				     </p>
					 </div>
				</div></a>

				<?php foreach($members as $member){?>

				<a href="index.php?load=profile&user=<?=$member['username'];?>">
				<div class="memberbox">					
					<img src="<?=BASEPATH ?>img/prof/<?=$member['profilepic']?>"/>					
					<div style="margin-top:8px">
					 <p><b><i><?=$member['email'];?></b></i></p>
					 <p><?php echo $member['firstname']." ".$member['lastname'];?></p>					
						 <p style="background-image:url('<?=BASEPATH?>img/group.png');padding:2px 0 0 18px">
						 Member since <?=$member['since']?>
						 </p>
					 </div>
				</div></a>

				<?php }?>
				
		</div>
</div>