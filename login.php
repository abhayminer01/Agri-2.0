<?php
include 'connection.php';
ob_start();
?>
 <?php

session_start();
if(isset($_POST['b1']))
{
    $t1=$_POST['t1'];
    $t2=$_POST['t2'];
$log=mysqli_query($dbcon,"select * from user_log where uid='$t1' and pwd='$t2'");
if(mysqli_num_rows($log)>0)
{
$r=mysqli_fetch_row($log);
if($r[3]=="admin")
{
    $_SESSION['uid']=$t1;
    header("location:./admin/home.php");
    
}
if($r[3]=="usr")
{
    $_SESSION['uid']=$t1;
    header("location:./user/home.php");
}
if($r[3]=="office")
{
    $_SESSION['uid']=$t1;
    header("location:./office/home.php");
}
if($r[3]=="police")
{
    $_SESSION['uid']=$t1;
    header("location:./police/home.php");
}
if($r[3]=="user")
{
    $_SESSION['uid']=$t1;
    header("location:./user/home.php");
}
}
else
{
    echo '<script>alert("Incorrect Username/Password")</script>'; 
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
	<link rel="shortcut icon" type="image/png" href="temp/assets/img/favicon.png">
	<!-- google font -->
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Poppins:400,700&display=swap" rel="stylesheet">
	<!-- fontawesome -->
	<link rel="stylesheet" href="temp/assets/css/all.min.css">
	<!-- bootstrap -->
	<link rel="stylesheet" href="temp/assets/bootstrap/css/bootstrap.min.css">
	<!-- owl carousel -->
	<link rel="stylesheet" href="temp/assets/css/owl.carousel.css">
	<!-- magnific popup -->
	<link rel="stylesheet" href="temp/assets/css/magnific-popup.css">
	<!-- animate css -->
	<link rel="stylesheet" href="temp/assets/css/animate.css">
	<!-- mean menu css -->
	<link rel="stylesheet" href="temp/assets/css/meanmenu.min.css">
	<!-- main style -->
	<link rel="stylesheet" href="temp/assets/css/main.css">
	<!-- responsive -->
	<link rel="stylesheet" href="temp/assets/css/responsive.css">

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
						<h1>Login</h1>
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
                            <div class="col-lg-6 mb-5 mb-lg-0">
					
				 	
					<div class="contact-form">
						<form method="POST" id="fruitkha-contact" >
							
                                                     
                                                       
                                                           <div class="col-lg-12">
                                                               
                                                              <p>
                                                           Email
                                                            <br/>
                                                            <input type="email" placeholder="Email" name="t1" style="width: 100%" >
							</p>  
                                                               
                                                           </div>
                                                            <br/>
                                                            <div class="col-lg-12">
                                                               
                                                               
                                                               <p>
                                                           Password
                                                            <br/>
								<input type="password" placeholder="*******" name="t2" style="width: 100%" >
                                                               </p>
                                                           </div>
                                                            
                                                        
                                                        
							
							<br/>
							<p><input type="submit"name="b1" value="Submit"></p>
						</form>
					</div>
				</div>
                            
                            
                            <div class="col-lg-6 mb-5 mb-lg-0">
                                
                                
                                <img style="width: 100%;height: 300px" src="img/mill.gif">
                                
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
	<script src="temp/assets/js/jquery-1.11.3.min.js"></script>
	<!-- bootstrap -->
	<script src="temp/assets/bootstrap/js/bootstrap.min.js"></script>
	<!-- count down -->
	<script src="temp/assets/js/jquery.countdown.js"></script>
	<!-- isotope -->
	<script src="temp/assets/js/jquery.isotope-3.0.6.min.js"></script>
	<!-- waypoints -->
	<script src="temp/assets/js/waypoints.js"></script>
	<!-- owl carousel -->
	<script src="temp/assets/js/owl.carousel.min.js"></script>
	<!-- magnific popup -->
	<script src="temp/assets/js/jquery.magnific-popup.min.js"></script>
	<!-- mean menu -->
	<script src="temp/assets/js/jquery.meanmenu.min.js"></script>
	<!-- sticker js -->
	<script src="temp/assets/js/sticker.js"></script>
	<!-- form validation js -->
	<script src="temp/assets/js/form-validate.js"></script>
	<!-- main js -->
	<script src="temp/assets/js/main.js"></script>
	
</body>
</html>