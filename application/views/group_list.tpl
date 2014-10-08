<div class="whitebox" style="padding-bottom:200px">

	<?php if(isset($error)) echo '<h4>"The group you requested doesnt exist or has been moved"</h4>';?>
		
			<h3>Group List:</h3>
			<?php foreach($group_list as $listed){?>

				<a href="index.php?load=group&page=<?=$listed['group_url']?>">
				<div class="memberbox" style="display:inline-block;width:90%">
					<img src="<?=BASEPATH ?>img/board.png"/> 
					<div style="margin-top:8px">
					 <p><b><i><?=$listed['name'];?></b></i></p>
					 <p><?php echo $listed['description'];?></p>	
					 </div>
				</div>
				</a>

				<?php }?>
</div>