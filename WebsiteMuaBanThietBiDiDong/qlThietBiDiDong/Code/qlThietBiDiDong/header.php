<?php 
    SESSION_START();
    //if(isset($_session['giohang']))
        //$_session['giohang'] = array();
    //Code xử lý đăng xuất
    if(isset($_POST['dangxuat']))
    {
        unset($_SESSION['status']);
    }
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Website mua bán thiết bị di động</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="Styles.css">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
</head>

<body>
	<div class="container">
    	<div class="page-header">
        	<img src="image/logo.png" style="width: 100%;">
        </div>
         <nav class="navbar navbar-expand-sm navbar-dark bg-primary rounded">
         <ul class="navbar-nav mr-auto">
         	<li class="nav-item">
               		<a class="nav-link" href="index.php">Home</a>
            </li>
            <li class="nav-item">
               	<a class="nav-link" href="category.php">Category</a>
            </li>
         </ul>
         <ul class="navbar-nav ml-auto">
            <li class="nav-item">
            	<form class="form-inline" action="search.php">
               	<input class="form-control mr-sm-2" type="text" name="timkiem" placeholder="Search">
               	<button class="btn btn-success" type="submit">Tìm kiếm</button>
	            </form>
            </li>
            <li class="nav-item">
            	<a class="nav-link" href="cart.php"><i class="fas fa-shopping-cart"></i><sup><?=(isset($_SESSION['giohang'])? count($_SESSION['giohang'])-1:0)?></sup></a>
            </li>
            <li class="nav-item">
            <?php 
                if(!isset($_SESSION['status']))
                    echo "<a class=\"nav-link\" href=\"signin.php\">Đăng nhập</a>";
                else
                    echo "<form action=\"index.php\" method=\"post\"><button type=\"submit\" name=\"dangxuat\" class=\"btn btn-light\">".$_SESSION['status']."</button></form>";
            ?>
            
            </li>
         </ul>
      </nav>


