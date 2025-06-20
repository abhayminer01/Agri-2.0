<?php
include '../connection.php';
ob_start();
session_start();
$usr=$_SESSION['uid'];

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
if(isset($_GET['chk']))
{
      
    $chk=$_GET['chk'];
   
        $upd2=mysqli_query($dbcon,"update plot set st='0'where id='$chk'");
    
   
    if($upd2>0)
    {
       header("location:plot.php");
}
}                         
                            


?>
<?php
if(isset($_GET['rem']))
{
      
    $rem=$_GET['rem'];
   
        $upd2=mysqli_query($dbcon,"update plot set st='1'where id='$rem'");
    
   
    if($upd2>0)
    {
       header("location:plot.php");
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
	<title>News</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
						<h1>free Farming Plot</h1>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end breadcrumb section -->

	<!-- latest news -->
	<div class="latest-news mt-150 mb-150">
		<div class="container">
			<div class="row">
                            
                            
                             <?php
                        
                                                        $sel_gal=mysqli_query($dbcon,"select * from plot where oid='$usr'");
                                                        if(mysqli_num_rows($sel_gal)>0)
                                                        {
                                                            $i=0;
                                                        ?>
                            
                            
                            
                            <?php
                                                            while($r_gal=mysqli_fetch_row($sel_gal))
                                                            {
                                                                $i++;
                                                                ?>
                            
				<div class="col-lg-6 col-md-12">
					<div class="single-latest-news">
                                            <img style="width: 100%;height: 250px" src="../img5/<?php echo $r_gal[5] ?>">
						<div class="news-text-box">
                                                    <h3><a href="plot_dt.php?mid=<?php echo $r_gal[0] ?>"><?php echo $r_gal[1] ?></a></h3>
							<p class="blog-meta">
								<span class="author"><i class="fas fa-map"></i><?php echo $r_gal[2] ?></span>
                                                                <span class="author"><i class="fas fa-map-marker-alt"></i> <?php echo $r_gal[3] ?></span>
                                                                <span class="author"><i class="fas fa-phone"></i><a href="tel:<?php echo $r_gal[7] ?>"> <?php echo $r_gal[7] ?></a></span>
								</p>
							
							<a href="plot_dt.php?mid=<?php echo $r_gal[0] ?>" class="read-more-btn">read more <i class="fas fa-angle-right"></i></a>
						||
                                                        <b>Plot:-</b>
                                    <?php
                                    if($r_gal[9]=="0")
                                    {
                                    ?>
                                    <b style="color: green">Available</b>
                                    <?php
                                    }
                                    ?>
                                    <?php
                                    if($r_gal[9]=="1")
                                    {
                                    ?>
                                    <b style="color: red">Not-Available</b>
                                    <?php
                                    }
                                    ?>
                                    &nbsp;&nbsp; <a href="plot.php?chk=<?php echo $r_gal[0] ?>"><span style="color: green" class="fa fa-check"></span></a>&nbsp;&nbsp; <a href="plot.php?rem=<?php echo $r_gal[0] ?>"><span style="color: red" class="fa fa-remove"></span></a>
                                
                                                
                                                </div>
					</div>
				</div>
                            
                            
                            
                             <?php
                                        
                                        
                                                            }
                                                            
                                                        }
                                                            ?>
                            
                            
				
				
				
					</div>
				</div>
				
				
			</div>
		</div>
	</div>
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