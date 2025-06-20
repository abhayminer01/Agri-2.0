<?php
include '../connection.php';
ob_start();
session_start();
$usr=$_SESSION['uid'];
$sel=mysqli_query($dbcon,"select * from user_data where em='$usr'");
    $r=mysqli_fetch_row($sel);
?>
<?php

if($usr=$_SESSION['uid'])
{
    
}
 else
     {
    header("location:../index.php");    
}
?>
 <?php
                 
                    if(isset($_POST['b1']))
 {
    
   $t1=$_POST['t1'];
   
   $t2=$_POST['t2'];
    $t3=$_POST['t3'];
   $t4=$_POST['t4'];
   $td=$_POST['td'];
    
    
    
      $up=$_FILES['myFile']['name'];
    $count=rand('1000000','9999999');
    $nfn=$count."".substr($up,strrpos($up,"."));

      if(move_uploaded_file($_FILES['myFile']['tmp_name'],getcwd()."//../img5//$nfn"))
    {     
       
          
    $ins=mysqli_query($dbcon,"insert into plot values('','$t1','$t2','$t3','$t4','$nfn','$usr','$r[2]','$td','0')");
    
    if($ins>0)
    {
      
                header("location:add_plot.php?suss=1");
            }
    }
              
            }

 
    
     
 
 
        ?>
<?php
                            if(isset($_GET['del']))
{
    $del1=mysqli_query($dbcon,"delete from cate where id='".$_GET['del']."'");
    //echo mysql_error();
    if($del1>0)
    {
       header("location:add_cate.php");
}
}
  


?>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Responsive Bootstrap4 Shop Template, Created by Imran Hossain from https://imransdesign.com/">

	<!-- title -->
	<title>Contact</title>

	<!-- favicon -->
	<link rel="shortcut icon" type="image/png" href="../temp/assets/img/favicon.png">
	<!-- google font -->
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Poppins:400,700&display=swap" rel="stylesheet">
	<!-- fontawesome -->
	<link rel="stylesheet" href="../temp/assets/css/all.min.css">
	<!-- bootstrap -->
	<link rel="stylesheet" href="../temp/assets/bootstrap/css/bootstrap.min.css">
	<!-- owl carousel -->
	<link rel="stylesheet" href="../temp/assets/css/owl.carousel.css">
	<!-- magnific popup -->
	<link rel="stylesheet" href="../temp/assets/css/magnific-popup.css">
	<!-- animate css -->
	<link rel="stylesheet" href="../temp/assets/css/animate.css">
	<!-- mean menu css -->
	<link rel="stylesheet" href="../temp/assets/css/meanmenu.min.css">
	<!-- main style -->
	<link rel="stylesheet" href="../temp/assets/css/main.css">
	<!-- responsive -->
	<link rel="stylesheet" href="../temp/assets/css/responsive.css">
        <script src="../ckeditor/ckeditor.js"></script>
      <script src="../ckeditor/samples/js/sample.js"></script>

</head>
<body>
	
	<!--PreLoader-->
    <div class="loader">
        <div class="loader-inner">
            <div class="circle"></div>
        </div>
    </div>
    <!--PreLoader Ends-->
	
	<!-- header -->
	<?php
        
        include 'menu.php';
        ?>
	<!-- end header -->

	<!-- search area -->
	<div class="search-area">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<span class="close-btn"><i class="fas fa-window-close"></i></span>
					<div class="search-bar">
						<div class="search-bar-tablecell">
							<h3>Search For:</h3>
							<input type="text" placeholder="Keywords">
							<button type="submit">Search <i class="fas fa-search"></i></button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end search arewa -->
	
	<!-- breadcrumb-section -->
	<div class="breadcrumb-section breadcrumb-bg">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 offset-lg-2 text-center">
					<div class="breadcrumb-text">
						<p>Agriculture</p>
						<h1>Add Farming Free Plot</h1>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end breadcrumb section -->

	<!-- contact form -->
	<div class="contact-from-section mt-150 mb-150">
		<div class="container">
			<div class="row">
                            <div class="col-lg-12 mb-5 mb-lg-0">
					
				 	<div id="form_status"></div>
					<div class="contact-form">
						<form method="POST"enctype="multipart/form-data" id="fruitkha-contact" >
                                                    <p>
                                                         <select name="td" id="stat" class="form-control input-sm" required="" required="required" >
                                        <option value="">Choose District</option>
                                        <?php
                                        $sel_state=mysqli_query($dbcon,"select * from district where StCode='18'");
                                        while($r_state=mysqli_fetch_row($sel_state))
                                        {
                                            ?>
                                        <option value="<?php echo $r_state[2] ?>"><?php echo $r_state[2] ?></option>
                                       <?php
                                           }
                                        ?>
                                    </select>
                                                    </p>
                                                    
                                                    <p>
                                                            <input type="text" placeholder="Title" name="t1" style="width: 100%">
								
							</p>
                                                        <p>
                                                            Plot Area
                                                            <br/>
                                                            <input type="text" placeholder="Plot Area details" name="t2" style="width: 100%">
								
                                                        </p>
                                                        <p><textarea name="t3"   placeholder="Address"></textarea></p>
							<br/>
                                                     
                                                        
                                                         <p>
                                                          Plot Description
                                                            <br/>  
                                                            <textarea name="t4"id="editor"   placeholder="Description"></textarea></p>
							<br/>
                                                        <script>
	initSample();
</script>
                                                        
							<div class="row">
                                                           <div class="col-lg-6">
                                                               
                                                              <p>
                                                           Plot Photo
                                                            <br/>
								<input type="file" placeholder="Phone" name="myFile" id="phone">
								
							</p>  
                                                               
                                                           </div>
                                                            
                                                            
                                                            
                                                        </div>
							<br/>
							<p><input type="submit"name="b1" value="Submit"></p>
						</form>
					</div>
				</div>
                            </div>
				
			</div>
		</div>
	</div>
	<!-- end contact form -->

	<!-- find our location -->
	
	<!-- footer -->
	
	<!-- end footer -->
	
	<!-- copyright -->
	<div class="copyright">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 col-md-12">
					Copyrights &copy; <?php echo date('Y')  ?> - <a href="#"><?php echo $title ?></a>,  All Rights Reserved.
				</div>
				
			</div>
		</div>
	</div>
	<!-- end copyright -->
	
	<!-- jquery -->
	<script src="../temp/assets/js/jquery-1.11.3.min.js"></script>
	<!-- bootstrap -->
	<script src="../temp/assets/bootstrap/js/bootstrap.min.js"></script>
	<!-- count down -->
	<script src="../temp/assets/js/jquery.countdown.js"></script>
	<!-- isotope -->
	<script src="../temp/assets/js/jquery.isotope-3.0.6.min.js"></script>
	<!-- waypoints -->
	<script src="../temp/assets/js/waypoints.js"></script>
	<!-- owl carousel -->
	<script src="../temp/assets/js/owl.carousel.min.js"></script>
	<!-- magnific popup -->
	<script src="../temp/assets/js/jquery.magnific-popup.min.js"></script>
	<!-- mean menu -->
	<script src="../temp/assets/js/jquery.meanmenu.min.js"></script>
	<!-- sticker js -->
	<script src="../temp/assets/js/sticker.js"></script>
	<!-- form validation js -->
	<script src="../temp/assets/js/form-validate.js"></script>
	<!-- main js -->
	<script src="../temp/assets/js/main.js"></script>
	
</body>
</html>