<div class="whitebox" style="padding-bottom:200px">

		
			<h3>My Submissions:</h3>
			<?php foreach($pins as $pin){?>

				
				<div class="memberbox" style="display:inline-block;width:90%">					
					<div style="margin-top:8px">
					 <p><b><i><?=$pin['title'];?></b></i></p>
					 <p><?php echo $pin['description'];?></p>
					 <?php foreach( $pin['steps'] as $step){
					 		var_dump($step);
					 	} ?>
					 </div>
				</div>

				<?php }?>
</div>