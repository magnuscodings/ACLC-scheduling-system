<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                          
                                            <div class="alert alert-info"><strong><center>Add Class </center></strong></div>
                                        </div>
                                        <div class="modal-body">
                              <form  method="post" enctype="multipart/form-data">
                                
                                <hr>
								
								 <div class="control-group">
                                           <label class="control-label" for="inputEmail">Day:</label><br />
										   <div id="day">
MONDAY:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" value="Monday" name="Monday" id="day">

<br>
TUESDAY:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" value="Tuesday" name="Tuesday" id="day">
<br>
WEDNESDAY:<input type="checkbox" value="Wednesday" name="Wednesday" id="day">
<br>
THURSDAY:&nbsp;&nbsp;&nbsp;<input type="checkbox" value="Thursday" name="Thursday" id="day">
<br>
FRIDAY:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" value="Friday" name="Friday" id="day">
<br>
SATURDAY:&nbsp;&nbsp;&nbsp;<input type="checkbox" value="Saturday" name="Saturday" id="day">
</div>
                                 </div>

								 <div class="control-group">
                                    <label class="control-label" for="inputPassword">Room:</label>
                                    <div class="controls">
									<select type="text" name="room_name" class = "form-control"  >
                                        <option>--Select--</option>
	<?php $room_query=mysqli_query($conn,"select * from room")or die(mysqli_error());
while($room_row=mysqli_fetch_array($room_query)){
	?>
	<option><?php echo $room_row['room_name']; ?></option>
	<?php } ?>
	</select>
                                    </div>
                                </div>






                               
                                <div class="control-group">
                                    <label class="control-label" for="inputPassword">Time Start:</label>
                                    <div class="controls">
                                       <select type="text" name="time_start" class = "form-control"  >
                                         <option>--Select--</option>
		<option value="7:30am">7:30am</option>
		<option value="8:00am">8:00am</option>
		<option value="8:30am">8:30am</option>
		<option value="9:00am">9:00am</option>
		<option value="9:30am">9:30am</option>
		<option value="10:am">10:00am</option>
		<option value="10:30am">10:30am</option>
		<option value="11:00am">11:00am</option>
		<option value="11:30am">11:30am</option>
		<option value="12:00pm">12:00pm</option>
		<option value="12:30pm">12:30pm</option>
		<option value="1:00pm">1:00pm</option>
		<option value="1:30pm">1:30pm</option>
		<option value="2:00pm">2:00pm</option>
		<option value="2:30pm">2:30pm</option>
		<option value="3:00pm">3:00pm</option>
		<option value="3:30pm">3:30pm</option>
		<option value="4:00pm">4:00pm</option>
		<option value="4:30pm">4:30pm</option>
		<option value="5:00pm">5:00pm</option>
		<option value="5:30pm">5:30pm</option>
		<option value="6:00pm">6:00pm</option>
		<option value="6:30pm">6:30pm</option>
		<option value="7:00pm">7:00pm</option>
		<option value="7:30pm">7:30pm</option>
		<option value="8:00pm">8:00pm</option>
		<option value="8:30pm">8:30pm</option></select>
                                    </div>
                                </div>
                               
                                <div class="control-group">
                                    <label class="control-label" for="inputPassword">Time End:</label>
                                    <div class="controls">
									<select type="text" name="time_end" class = "form-control"  >
                                        <option>--Select--</option>
		<option value="7:30am">7:30am</option>
		<option value="8:00am">8:00am</option>
		<option value="8:30am">8:30am</option>
		<option value="9:00am">9:00am</option>
		<option value="9:30am">9:30am</option>
		<option value="10:am">10:00am</option>
		<option value="10:30am">10:30am</option>
		<option value="11:00am">11:00am</option>
		<option value="11:30am">11:30am</option>
		<option value="12:00pm">12:00pm</option>
		<option value="12:30pm">12:30pm</option>
		<option value="1:00pm">1:00pm</option>
		<option value="1:30pm">1:30pm</option>
		<option value="2:00pm">2:00pm</option>
		<option value="2:30pm">2:30pm</option>
		<option value="3:00pm">3:00pm</option>
		<option value="3:30pm">3:30pm</option>
		<option value="4:00pm">4:00pm</option>
		<option value="4:30pm">4:30pm</option>
		<option value="5:00pm">5:00pm</option>
		<option value="5:30pm">5:30pm</option>
		<option value="6:00pm">6:00pm</option>
		<option value="6:30pm">6:30pm</option>
		<option value="7:00pm">7:00pm</option>
		<option value="7:30pm">7:30pm</option>
		<option value="8:00pm">8:00pm</option>
		<option value="8:30pm">8:30pm</option></select>
                                    </div>
                                </div>


								<div class="control-group">
                                    <label class="control-label" for="inputPassword">Semester:</label>
                                    <div class="controls">
									<select type="text" name="semester" class = "form-control"  >
									<option>--Select--</option>
									<?php $semester_query=mysqli_query($conn,"select * from semester")or die(mysqli_error());
while($semester_row=mysqli_fetch_array($semester_query)){
	?>
	<option><?php echo $semester_row['semester']; ?></option>
	<?php } ?>
                                     
	</select>
                                    </div>
                                </div>


								
           
            
        <div class="control-group">
    <label for="course_year" class="control-label">Course:</label>
    <select id="course_year" class="form-control" name="course_year_section" required onchange="getSubjects()">
        <option>Select</option>
        <option value="BSIT1">BSIT1</option>
        <option value="BSIT2">BSIT2</option>
        <option value="BSIT3">BSIT3</option>
        <option value="BSIT4">BSIT4</option>
    </select>
</div>

<div id="subjectContainer" class="control-group">
    <label class="control-label" for="inputPassword">Subject:</label>
    <div class="controls">
        <select id="subject" type="text" name="subject_code" class="form-control">
            <option></option>
        </select>
    </div>
</div>


								

							
								
								
								 <div class="control-group">
                                    <label class="control-label" for="inputPassword">Teacher:</label>
                                    <div class="controls">
									<select type="text" name="fname" class = "form-control"  >
                                      <option>--Select--</option>
	<?php $teacher_query=mysqli_query($conn,"select * from teachers")or die(mysqli_error());
while($teacher_row=mysqli_fetch_array($teacher_query)){
	?>
	<option><?php echo $teacher_row['fname']; ?>&nbsp;<?php echo $teacher_row['lname']; ?></option>
	<?php } ?>
	</select>
                                    </div>
                                </div>
								
								
								
								
								  
								
								  <div class="control-group">
                                    <label class="control-label" for="inputPassword">School Year:</label>
                                    <div class="controls">
									<select type="text" name="sy" class = "form-control" >
                                       <option>--Select--</option>
	<?php $sy_query=mysqli_query($conn,"select * from sy")or die(mysqli_error());
while($sy_row=mysqli_fetch_array($sy_query)){
	?>
	<option><?php echo $sy_row['sy']; ?></option>
	<?php } ?>
	</select>
                                    </div>
                                </div>
								<div class="control-group">
                                    <label class="control-label" for="inputPassword">Department:</label>
                                    <div class="controls">
									<select type="text" name="department" class = "form-control" placeholder="Category" >  
									<option>--Select--</option>
	<?php $course_query=mysqli_query($conn,"select * from subject")or die(mysqli_error());
while($course_row=mysqli_fetch_array($course_query)){
	?>
	<option><?php echo $course_row['department']; ?></option>
	<?php } ?>
	</select>
                                    </div>
                                </div>

                              
								<div class = "modal-footer">
											 <button name = "go" class="btn btn-primary">Save</button>
											<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                           

								</div>
							
									   </div>
                                     
                                          
                                      
                                    </div>
									
									  </form>  
									  
									   <?php include ('connect.php');
									   
                            if (isset($_POST['go'])) {
								$Monday=isset($_POST['Monday']) ? $_POST['Monday'] : '';
						$Tuesday=isset($_POST['Tuesday']) ? $_POST['Tuesday'] : '';
						$Wednesday=isset($_POST['Wednesday']) ? $_POST['Wednesday'] : '';
						$Thursday=isset($_POST['Thursday']) ? $_POST['Thursday'] : '';
						$Friday=isset($_POST['Friday']) ? $_POST['Friday'] : '';
						$Saturday=isset($_POST['Saturday']) ? $_POST['Saturday'] : '';

                                $day=$Monday." ".$Tuesday." ".$Wednesday." ".$Thursday." ".$Friday." ".$Saturday;
					$time_start= $_POST['time_start'] ;					
					$time_end=$_POST['time_end'] ;
					$fname=$_POST['fname'] ;
					$subject_code=$_POST['subject_code'] ;
					$room_name=$_POST['room_name'] ;
					$course_year_section=$_POST['course_year_section'] ;
					$semester=$_POST['semester'] ;
					$sy=$_POST['sy'] ;
					$department=$_POST['department'] ;
					
                                


            
			$query1= mysqli_query($conn,"SELECT * FROM classsched WHERE day='$day' and time_start='$time_start' and time_end='$time_end' and fname='$fname'") or die (mysqli_error());
			$query2 = mysqli_query($conn,"SELECT * FROM classsched WHERE day='$day' and time_start='$time_start' and time_end='$time_end' and room_name='$room_name'") or die (mysqli_error());
			$query3 = mysqli_query($conn,"SELECT * FROM classsched WHERE day='$day' and time_start='$time_start' and time_end='$time_end' and course_year_section='$course_year_section'") or die (mysqli_error());
			$query4 = mysqli_query($conn,"SELECT * FROM classsched WHERE day='$day' and time_start='$time_start' and time_end='$time_end' ") or die (mysqli_error());
			$count1=mysqli_num_rows($query1);
			$count2=mysqli_num_rows($query2);
			$count3=mysqli_num_rows($query3);
			$count4=mysqli_num_rows($query4);
			
			

			if($count1 > 0){
			echo "<script>alert ('Teacher already exist  $fname;  ' );</script>";
			 }
			elseif($count2> 0){
			echo "<script>alert('Room already exist <?php $room_name; ?>');</script>";
			 }
			 elseif($count3 > 0){
			echo "<script>alert('Course already exists');</script>";
			 }
			 elseif($count3 > 0){
			echo "<script>alert('Conflict In time');</script>";
			 }
			else{
                                mysqli_query($conn,"insert into classsched (classid,day,time_start,time_end,fname,subject_code,room_name,course_year_section,semester,sy,department,status)
                            	values ('','$day','$time_start','$time_end','$fname','$subject_code','$room_name','$course_year_section','$semester','$sy','$department','unsaved')
                                ") or die(mysqli_error());

                                header('location:class.php');
                            }
							}
                            ?>
									  
									  
									  
									  
                                </div>
                            </div>
		<script>
			function getSubjects() {
    var course = document.getElementById("course_year").value;
    if (course === "Select") {
        document.getElementById("subject").innerHTML = '<option>Select a course first</option>';
        return;
    }

    var xhr = new XMLHttpRequest();
    xhr.open("GET", "get_subjects.php?course=" + course, true);
    xhr.onreadystatechange = function() {
        if (xhr.readyState == 4 && xhr.status == 200) {
            var subjects = JSON.parse(xhr.responseText);
            var subjectSelect = document.getElementById("subject");
            subjectSelect.innerHTML = "";
            subjects.forEach(function(subject) {
                var option = document.createElement("option");
                option.value = subject.title;
                option.textContent = subject.title;
                subjectSelect.appendChild(option);
            });
        }
    };
    xhr.send();
}

	

		</script>