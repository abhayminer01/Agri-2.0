<?php
include '../connection.php';
ob_start();
session_start();
$usr=$_SESSION['uid'];
$mid=$_GET['mid'];
 
$sel=mysqli_query($dbcon,"select * from doubt where id='$mid'");
    $r=mysqli_fetch_row($sel);
    
    
    $sel1=mysqli_query($dbcon,"select * from user_data where em='$r[3]'");
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
    
   
    $ins=mysqli_query($dbcon,"insert into msg values('','$mid','$t1','$date','$usr','1','0')");
    
    if($ins>0)
    {
     
                header("location:doubt_dt.php?mid=$mid");
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
	<title>Single News</title>

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
						<h1>Farmer Doubts</h1>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end breadcrumb section -->
	
	<!-- single article section -->
	<div class="mt-150 mb-150">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="single-article-section">
						<div class="single-article-text">
                                                    <img style="width: 100%;height: 350px" src="../img/help.png">
							<p class="blog-meta">
								<span class="author"><i class="fas fa-user"></i><?php echo $r1[1] ?></span>
								<span class="date"><i class="fas fa-calendar"></i> <?php echo $r[2] ?></span>
							</p>
							<h2><?php echo $r[1] ?></h2>
							</div>
<br/>
                                            <div class="comment-template">
							
							<p>Leave a comment</p>
                                                        <form method="post">
								
								<p><textarea name="t1" id="comment" cols="30" rows="10" placeholder="Your Message"></textarea></p>
								<p><input type="submit"name="b1" value="Submit"></p>
							</form>
						</div>
                                            
                                            
                                            
                                            
						<div class="comments-list-wrap">
							<h3 class="comment-count-title">Comments</h3>
							<div class="comment-list">
								
                                                             <?php
                        
                                                        $sel_gal=mysqli_query($dbcon,"select * from msg where did='$mid' order by id desc");
                                                        if(mysqli_num_rows($sel_gal)>0)
                                                        {$i=0;
                                                        ?>
                                                            <?php
                                                            while($r_gal=mysqli_fetch_row($sel_gal))
                                                            {
                                                                
                                                                ?>
                                                            
                                                            <?php
                                                            if($r_gal[5]=="1")
                                                            {
                                                                
                                                             $sel2=mysqli_query($dbcon,"select * from user_data where em='$r_gal[4]'");
                                                              $r2=mysqli_fetch_row($sel2);
                                                            ?>
                                                            
								<div class="single-comment-body">
									<div class="comment-user-avater">
                                                                            <img style="width: 100px;height: 60px" src="../img1/<?php echo $r2[6] ?>" alt="">
									</div>
									<div class="comment-text-body">
										<h4><?php echo $r2[1] ?> <span class="comment-date"><?php echo $r_gal[3] ?></span> </h4>
										<p><?php echo $r_gal[2] ?></p>
									</div>
								</div>
                                                            <?php
                                                            }
                                                            else
                                                            {
                                                             $sel2=mysqli_query($dbcon,"select * from dis_data where em='$r_gal[4]'");
                                                              $r2=mysqli_fetch_row($sel2);   
                                                            
                                                            ?>
                                                            <div class="single-comment-body">
									<div class="comment-user-avater">
                                                                            <img style="width: 100px;height: 60px" src="../img/1200px-Department_of_Agriculture_of_the_Philippines.svg.png" alt="">
									</div>
									<div class="comment-text-body">
                                                                            <h4><?php echo $r2[2] ?> <span class="comment-date"><?php echo $r_gal[3] ?></span><b>(Agriculture Office)</b> </h4>
										<p><?php echo $r_gal[2] ?></p>
									</div>
								</div>
                                                            <?php
                                                            }
                                                            ?>
                                                            
                                                            <?php
                                                            } 
                                                            
                                                        }
                                                        else
                                                        {
                                                            echo 'no Message found';
                                                        }
                                                        ?>
                                                            
							</div>
						</div>

						
					</div>
				</div>
				
			</div>
		</div>
	</div>
	<!-- end single article section -->

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