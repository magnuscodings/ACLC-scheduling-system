<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                          
                                            <div class="alert alert-info"><strong><center>Add Subject </center></strong></div>
                                        </div>
                                        <div class="modal-body">
                              <form  method="post" enctype="multipart/form-data">
                                
                                <hr>
								
								 <div class="control-group">
                                           <label class="control-label" for="inputEmail">Subject Code:</label>
                                           <input type="text" name="subject_code" class = "form-control" placeholder="Enter Subject Code">
                                          
                                 </div>
                               
                                <div class="control-group">
                                    <label class="control-label" for="inputPassword">Subject Title:</label>
                                    <div class="controls">
                                        <input type="text" class = "form-control"  name="subject_title"  placeholder="Description" >
                                    </div>
                                </div>
                               
                                <div class="control-group">
                                    <label class="control-label" for="inputPassword">Category:</label>
                                    <div class="controls">
                                        <input type="text" name="subject_category" class = "form-control" placeholder="">
                                    </div>
                                </div>
								  <div class="control-group">
                                    <label class="control-label" for="inputPassword">Semester:</label>
                                    <div class="controls">

                                        <select type="text" name="semester" class = "form-control" >
                                       <option>1st</option>
                                       <option>2nd</option>
                                   </select>
                                    </div>
                                </div>

                                <div class="control-group">
                                    <label class="control-label" for="inputPassword">Course/Year/Section</label>
                                    <div class="controls">
                                        <select type="text" name="course" class = "form-control" >
                                       <option>--Select--</option>
  <?php $course_query=mysqli_query($conn,"select * from course")or die(mysqli_error());
while($course_row=mysqli_fetch_array($course_query)){
  ?>
  <option><?php echo $course_row['course']; ?>&nbsp;<?php echo $course_row['year_section']; ?></option>
  <?php } ?>
  
                                        </select>
                                    </div>
                                </div>

                                <!--<div class="control-group">
                                    <label class="control-label" for="inputPassword">Year:</label>
                                    <div class="controls">

                                        <select type="text" name="year_section" class = "form-control" >
                                       <option>1st Year</option>
                                       <option>2nd Year</option>
                                       <option>3rd Year</option>
                                       <option>4th Year</option>
                                   </select>
                                    </div>
                                </div>-->
                                
								  <div class="control-group">
                                    <label class="control-label" for="inputPassword">Department:</label>
                                    <div class="controls">
                                       <select type="text" name="department" class = "form-control" >
                                        <option>College</option>
                                      
  
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

                                $subject = $_POST['subject_code'];
                                $subject_title = $_POST['subject_title'];
                                $subject_category = $_POST['subject_category'];
								$semester = $_POST['semester'];
                                $course = $_POST['course'];
                                $year_section = $_POST['year_section'];
								$department = $_POST['department'];
                                


                                
                                mysqli_query($conn,"insert into subject (subject_code,subject_title,subject_category,semester, course,year_section,department)
                            	values ('$subject','$subject_title','$subject_category','$semester','$course','$year_section','$department')
                                ") or die(mysqli_error());

                                header('location:forsubject.php');
                            }
                            ?>
									  
									  
									  
									  
                                </div>
                            </div>