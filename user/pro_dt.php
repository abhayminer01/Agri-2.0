<?php
include '../connection.php';
ob_start();
session_start();
$usr=$_SESSION['uid'];
$mid=$_GET['mid'];
 
$sel=mysqli_query($dbcon,"select * from pro where id='$mid'");
    $r=mysqli_fetch_row($sel);
    
    
    $sel1=mysqli_query($dbcon,"select * from user_data where em='$usr'");
    $r1=mysqli_fetch_row($sel1);
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
    $t5=$_POST['t5'];
    $count=rand('1000000','9999999');
    
    
        
       
          
    $ins=mysqli_query($dbcon,"insert into sale values('','$mid','$t1','$t2','$t3','$t4','$t5','$usr','$r[6]','$date','FT-$count','0')");
    
    if($ins>0)
    {
      
                header("location:sale.php");
            }
    }
              
           
 
    
    
 
 
        ?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Responsive Bootstrap4 Shop Template, Created by Imran Hossain from https://imransdesign.com/">

	<!-- title -->
	<title>Single Product</title>

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
						<h1>Product Details</h1>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end breadcrumb section -->

	<!-- single product -->
	<div class="single-product mt-150 mb-150">
		<div class="container">
			<div class="row">
				<div class="col-md-5">
					<div class="single-product-img">
                                            <img style="width: 100%;height: 500px" src="../img4/<?php echo $r[5] ?>" alt="">
					</div>
				</div>
				<div class="col-md-7">
					<div class="single-product-content">
						<h3><?php echo $r[2] ?></h3>
						<p class="single-product-pricing"><span><?php echo $r[3] ?></span> <?php echo $r[4] ?> Rs/-</p>
						<div class="contact-form">
							<form method="POST" enctype="multipart/form-data" id="fruitkha-contact" >
							<p>
                                                            <input value="<?php echo $r1[1] ?>" type="text" placeholder="Name" name="t1" >
								<input type="tel" placeholder="Phone" name="t2" value="<?php echo $r1[2] ?>"   required="" onkeyup="chkc(this.value)" /><span id="o3"></span>
							</p>
							<p>
								
                                                            <input  type="email" placeholder="Email" name="t3" value="<?php echo $r1[3] ?>" required=""onkeyup="vem(this.value)" /><span id="em"></span>
                                                                
                                                                <input type="text" placeholder="Quantity" name="t4" required="" >
							</p>
                                                        <p><textarea name="t5"  cols="2"rows="2" placeholder="Address"><?php echo $r1[5] ?></textarea></p>
							<br/>
                                                        
                                                     
                                                        
                                                        
							
							<br/>
							<p><input type="submit"name="b1" value="Submit"></p>
						</form>
							
						</div>
						
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end single product -->

	<!-- more products -->
	
	<!-- end more products -->

	<!-- logo carousel -->
	
	<!-- end logo carousel -->

	<!-- footer -->
	
	<!-- end footer -->
	
	<!-- copyright -->
	<div class="copyright">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 col-md-12">
					<p>Copyrights &copy; 2019 - <a href="../temp/https://imransdesign.com/">Imran Hossain</a>,  All Rights Reserved.</p>
				</div>
				<div class="col-lg-6 text-right col-md-12">
					<div class="social-icons">
						<ul>
							<li><a href="../temp/#" target="_blank"><i class="fab fa-facebook-f"></i></a></li>
							<li><a href="../temp/#" target="_blank"><i class="fab fa-twitter"></i></a></li>
							<li><a href="../temp/#" target="_blank"><i class="fab fa-instagram"></i></a></li>
							<li><a href="../temp/#" target="_blank"><i class="fab fa-linkedin"></i></a></li>
							<li><a href="../temp/#" target="_blank"><i class="fab fa-dribbble"></i></a></li>
						</ul>
					</div>
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
	<!-- main js -->
	<script src="../temp/assets/js/main.js"></script>

</body>
</html>