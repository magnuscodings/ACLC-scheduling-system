<?php include ('session.php');?>	
<?php include ('header.php');?>	
<body>
    <div id="wrapper">
        <nav class="navbar navbar-default top-navbar" role="navigation">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#	">Subject</a>
            </div>

            <ul class="nav navbar-top-links navbar-right">
              
                <li class="dropdown"> 
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                      						
					  Welcome : Administrator
                    </a>
                  
                    <!-- /.dropdown-user -->
                </li>
                <!-- /.dropdown -->
            </ul>
        </nav>
        <!--/. NAV TOP  -->
       <?php include ('nav_sidebar3.php');?>
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper" >
            <div id="page-inner">
			 <div class="row">
                    <div class="col-md-12">
                        <h1 class="page-header">
                           
							 <button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
                              Add Subject
                            </button>
							
						
                        </h1>
						<?php include ('modal_add_subjecta.php');?>
						
						<div class="hero-unit-table">   
                            <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                <div class="alert alert-info">
                                    <strong><i class="icon-user icon-large"></i>&nbsp;Subject Table</strong>
                                </div>
                                <thead>
                                    <tr>
                                        <th>Subject Code</th>
                                        <th>Subject Title</th>
										<th>Category</th>
										<th>Semester</th>
                                        <th>Course/Year/Section</th>
                            
                                        <th>Department</th>

                                        <th>Action</th>
                                        
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php include ('connect.php');
                                    $query = mysqli_query($conn,"select * from subject") or die(mysqli_error());
                                    while ($row = mysqli_fetch_array($query)) {
                                        $id = $row['subjectid'];
										
																
										$query1 = mysqli_query($conn,"SELECT *FROM subject");
										

                                        ?>
                                        <tr class="warning">
                                            <td><?php echo $row['subject_code']; ?></td> 
                                            <td><?php echo $row['subject_title']; ?></td> 
											<td><?php echo $row['subject_category']; ?></td> 
											<td><?php echo $row['semester']; ?></td>
                                            <td><?php echo $row['course']; ?></td>
                                            
                                            <td><?php echo $row['department']; ?></td>  
										
                                           
                                            <td width="160">
                                                <a href="#delete_subject_modal<?php echo $id; ?>" role="button"  data-target = "#delete_product<?php echo $id;?>"data-toggle="modal" class="btn btn-danger"><i class="icon-trash icon-large"></i>&nbsp;Delete</a>
                                                <a href="edit_subject.php<?php echo '?id=' . $id; ?>" class="btn btn-success"><i class="icon-pencil icon-large"></i>&nbsp;Edit</a>
                                            </td>
                                            <!-- product delete modal -->
                                   <?php include ('delete_subject_modal.php');?>
                                    <!-- end delete modal -->

                                    </tr>
                                <?php } ?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div> 
                
				
				</div>
             <!-- /. PAGE INNER  -->
            </div>
         <!-- /. PAGE WRAPPER  -->
        </div>
     <!-- /. WRAPPER  -->
    <!-- JS Scripts-->
    <!-- jQuery Js -->
   <?php include ('script.php');?>
</body>
</html>
