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
                <a class="navbar-brand" href="#	">HOME</a>
            </div>

            <ul class="nav navbar-top-links navbar-right">
              
                <li class="dropdown"> 
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                      						
					  Welcome : COED Department
                    </a>
                  
                    <!-- /.dropdown-user -->
                </li>
                <!-- /.dropdown -->
            </ul>
        </nav>
        <!--/. NAV TOP  -->
       <?php include ('nav_sidebar1.php');?>
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper" >
		    <img src="img/1.jpg" height="200px" width="1050px">
            <div id="page-inner">
			 <div class="row">
                    <div class="col-md-12">
                   
						<div class="hero-unit-table">   
                            <table class="table table-striped table-bordered table-hover" id="dataTables-example"> 
                                <div class="alert alert-info"><center><h1><b>Vision</h1></b></center> <br><p> A leading globally-competitive training center for professional teachers in elementary and secondary levels.</p>
                                   
                        </div>
						 <div class="alert alert-info"><center><h1><b>Mission</h1></b></center><br><p> Train and develop highly motivated and committed professional elementary and secondary education teachers equipped with instructional, personal, and social competencies conducive to the task of human development.</p>
                                   
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
