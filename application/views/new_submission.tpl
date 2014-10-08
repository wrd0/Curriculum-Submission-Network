<div class="whitebox" style="padding:20px;padding-bottom:200px;">
	
		<h2>New Submission</h2>
		
			<h4>Submission details:</h4>
				<form method="post" action="index.php?load=submission/newSubmission">				
				<!--<input type="text" style="width:100%;" value="Originator: <?=$_SESSION['firstname']." ".$_SESSION['lastname']?>" readonly/>-->

				<div style="text-align:left;font: 12px arial,sans-serif">
					<h5>This submission is for a:</h5>
					<input type="radio" name="sub_type" value="1">New Program
					<input type="radio" name="sub_type" value="2">Minor Program Change
					<input type="radio" name="sub_type" value="3">Major Program Change
					<input type="radio" name="sub_type" value="4">Program Deletion
					<input type="radio" name="sub_type" value="5">New Course
					<input type="radio" name="sub_type" value="6">Course Change
					<input type="radio" name="sub_type" value="7">Editorial Calendar Change
				</div>
				<select name="group" class="modern">
				  <?php foreach($all_groups as $group){

				  $v = strpos($group['name'],"Faculty of");
				  if($v !== false)
				  	echo '<option value="'.$group['group_id'].'">'.$group['name'].'</option>';

				  }?>
				</select>

				<!--<div style="text-align:left;font: 12px arial,sans-serif">
					<h5>The course is:</h5>
					<input type="radio" name="course_type" value="new">New
					<input type="radio" name="course_type" value="change">Requiring changes
				</div>-->

				<input class="modern" type="text" name="title" placeholder="Title" required/>
				<textarea class="modern" rows="4" name="description" placeholder="Description" required></textarea>
				<textarea class="modern" rows="40" name="document" placeholder="Submission" required></textarea>

				<input class="modern" type="submit" name="action" value="Send"/>
				<input class="modern" type="submit" name="action" value="Save as draft"/>
				</form>


</div>