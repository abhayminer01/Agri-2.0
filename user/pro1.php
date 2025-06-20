<?php
include '../connection.php';
ob_start();
session_start();
$usr=$_SESSION['uid'];
$mid=$_GET['mid'];
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
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Responsive Bootstrap4 Shop Template, Created by Imran Hossain from https://imransdesign.com/">

	<!-- title -->
	<title>Shop</title>

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
						<p>Fresh and Organic</p>
						<h1>Shop</h1>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end breadcrumb section -->

	<!-- products -->
	<div class="product-section mt-150 mb-150">
		<div class="container">

			<div class="row">
                <div class="col-md-12">
                    <div class="product-filters">
                        <ul>
                            <a href="pro.php"> <li  data-filter="*">All</li></a>
                             <?php
                        
                                                        $sel_gal=mysqli_query($dbcon,"select * from cate");
                                                         while($r_gal=mysqli_fetch_row($sel_gal))
                                                            {
                                                        ?>
                            <a href="pro1.php?mid=<?php echo $r_gal[0] ?>"><li><?php echo $r_gal[1] ?></li></a>
                            
                            
                            
                            
                            <?php
                            
                            
                                                            }
                                                            ?>
                            
                        </ul>
                    </div>
                </div>
            </div>

			<div class="row product-lists">
                             <?php
                        
                                                        $sel_gal=mysqli_query($dbcon,"select * from pro where uid !='$usr' and cate='$mid'");
                                                        if(mysqli_num_rows($sel_gal)>0)
                                                        {$i=0;
                                                        ?>
                            
                            
                             <?php
                                                            while($r_gal=mysqli_fetch_row($sel_gal))
                                                            {
                                                                $i++;
                                                                ?>
                            
				<div class="col-lg-4 col-md-6 text-center strawberry">
					<div class="single-product-item">
						<div class="product-image">
                                                    <a href="pro_dt.php?mid=<?php echo $r_gal[0] ?>"><img style="width: 100%;height: 300px" src="../img4/<?php echo $r_gal[5] ?>" alt=""></a>
						</div>
						<h3><?php echo $r_gal[2] ?></h3>
						<p class="product-price"><span><?php echo $r_gal[3] ?></span> <?php echo $r_gal[4] ?> Rs/- </p>
						<a href="pro_dt.php?mid=<?php echo $r_gal[0] ?>" class="cart-btn"><i class="fas fa-shopping-cart"></i> Buy Now</a>
					</div>
				</div>
				
				<?php
                                                            }
                                                        }
 else {
    echo"no Product found"; 
 }
                                                            ?>
			</div>

			
		</div>
	</div>
	<!-- end products -->

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