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
                 
 
                    if(isset($_POST['b1']))
 {
    
    $t1=$_POST['t1'];
    $t2=$_POST['t2'];
    
   $dt=date('Y-m-d');
    $ins=mysqli_query($dbcon,"insert into loan values('','$t1','$t2','$dt','$usr','0')");
    
    if($ins>0)
    {
     
                header("location:add_loan.php?suss=1");
            }
    }
        
 
        ?>
<?php
                            if(isset($_GET['del']))
{
    $del1=mysqli_query($dbcon,"delete from loan where id='".$_GET['del']."'");
    //echo mysql_error();
    if($del1>0)
    {
       header("location:add_loan.php");
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
						<h1>Loan & Subsidies</h1>
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
					
				 	
					<div class="contact-form">
						<form method="POST" id="fruitkha-contact" >
							
                                                     
                                                       
                                                           
                                                            
                                                        <div class="col-lg-12">
                                                               
                                                              <p>
                                                         Title
                                                            <br/>
                                                            <input type="text" placeholder="Title" name="t1" style="width: 100%" >
							</p>  
                                                               
                                                           </div>
                                                    
                                                    
                                       
                                                    
                                                    <div class="col-lg-12">
                                                               
                                                              <p>
                                                         Description
                                                            <br/>
                                                            <textarea id="editor"  style="width: 100%" name="t2"placeholder=""></textarea>
							</p>  
                                                               
                                                           </div>
                                                        <script>
	initSample();
</script>
							
							<br/>
							<p><input type="submit"name="b1" value="Submit"></p>
						</form>
					</div>
				</div>
                            
                            
                            <div class="col-lg-12 mb-5 mb-lg-0">
                                
                                
                                
                            
                           
                                    
                                     <?php
                        
                                                        $sel_gal=mysqli_query($dbcon,"select * from loan where uid='$usr' order by id desc");
                                                        if(mysqli_num_rows($sel_gal)>0)
                                                        {$i=0;
                                                        ?>
                                    <table class="table table-bordered">
                                    <thead>
                                        
                                        <tr>
                                            <th scope="col">#</th>
                                            
                                            <th scope="col">Title</th>
                                            <th scope="col">Description</th>
                                             <th scope="col">Date</th>
                                            <th scope="col">More</th>
                                        </tr>
                                       
                                    </thead>
                                    
                                    <tbody>
                                         <?php
                                                            while($r_gal=mysqli_fetch_row($sel_gal))
                                                            {
                                                                $i++;
                                                                ?>
                                        <tr>
                                            <th scope="row"><?php echo $i ?></th>
                                            
                                            <td><?php echo $r_gal[1] ?></td>
                                            <td><?php echo $r_gal[2] ?></td>
                                            <td><?php echo $r_gal[3] ?></td>
                                            <td><a href="add_loan.php?del=<?php echo $r_gal[0] ?>"><span style="color: red" class="fa fa-trash"></span></a></td>
                                            
                                        </tr>
                                        <?php
                                        
                                        
                                                            }
                                                            ?>
                                    </tbody>
                                </table>
                                    <?php
                                                        }
                                                        ?>
                                    
                        
                        
                                
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