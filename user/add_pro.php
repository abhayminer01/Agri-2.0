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
    $t3=$_POST['t3'];
    $t4=$_POST['t4'];
    
    
    
     $up=$_FILES['myFile']['name'];
    $count=rand('1000000','9999999');
    $nfn=$count."".substr($up,strrpos($up,"."));

      if(move_uploaded_file($_FILES['myFile']['tmp_name'],getcwd()."//../img4//$nfn"))
    { 
       
      
       
          
    $ins=mysqli_query($dbcon,"insert into pro values('','$t1','$t2','$t3','$t4','$nfn','$usr','0')");
    
    if($ins>0)
    {
      
                header("location:add_pro.php?suss=1");
            }
    }
              
            }

 
    
     
 
 
        ?>
<?php
if(isset($_GET['chk']))
{
      
    $chk=$_GET['chk'];
   
        $upd2=mysqli_query($dbcon,"update pro set st='0'where id='$chk'");
    
   
    if($upd2>0)
    {
       header("location:add_pro.php");
}
}                         
                            


?>
<?php
if(isset($_GET['rem']))
{
      
    $rem=$_GET['rem'];
   
        $upd2=mysqli_query($dbcon,"update pro set st='1'where id='$rem'");
    
   
    if($upd2>0)
    {
       header("location:add_pro.php");
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
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
						<h1>Sell Product</h1>
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
						<form method="POST"enctype="multipart/form-data"  id="fruitkha-contact" 
                                                      <p>
                                                          <select name="t1" id="stat" class="form-control input-sm" required="" required="required" >
                                        <option value="">Choose Category</option>
                                        <?php
                                        $sel_state=mysqli_query($dbcon,"select * from cate");
                                        while($r_state=mysqli_fetch_row($sel_state))
                                        {
                                            ?>
                                        <option value="<?php echo $r_state[0] ?>"><?php echo $r_state[1] ?></option>
                                       <?php
                                           }
                                        ?>
                                    </select>
                                                    </p>
							<p>
                                                            <input type="text" placeholder="Product Name" name="t2" style="width: 100%">
								
							</p>
							<p>
								
                                                                <input type="text" placeholder="Price Quantity" name="t3" >
                                                                <input type="text" placeholder="Price" name="t4" >
								
							</p>
                                                       
                                                        <div class="row">
                                                           <div class="col-lg-6">
                                                               
                                                              <p>
                                                           Photo
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
                            
                            
                            <div class="col-lg-6 mb-5 mb-lg-0">
                                
                                
                                
                            
                           
                        
                        
                                
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