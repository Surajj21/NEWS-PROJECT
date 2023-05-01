<?php 
    $page = basename($_SERVER['PHP_SELF']);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title><?php echo $page; ?></title>
    <!-- Bootstrap -->
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <!-- Font Awesome Icon -->
    <link rel="stylesheet" href="css/font-awesome.css">
    <!-- Custom stlylesheet -->
    <link rel="stylesheet" href="css/main.css">
</head>
<body>
<!-- HEADER -->
<div id="menu0">
        <div class="container p-0">
            <div class="row py-3">
                <div class="col-md-8 p-0">
                    <a href="#" class="text-light"><i class="fa fa-phone"></i>&nbsp <span class="a"><b>123-456-7890</b></span></a>
                    <a href="#" class="text-light"><i class="fa fa-envelope-open-o"></i>&nbsp <span class="b"><b> New York, NY 1002</b></span></a>
                    <a href="#" class="text-light"><i class="fa fa-map-marker"></i>&nbsp <span class="c"><b> mail@domain.com</b></span></a>
                </div>
                <div class="col-md-4">
                    <div class="top-menu">
                    <a href="#" class="text-light"><span><b>News</b></span></a>
                        <a href="#" class="text-light"><span><b>Careers</b></span></a>
                        <a href="#" class="text-light"><span><b>Services</b></span></a>
                        <a href="#" class="text-muted"><span><i class="fa fa-facebook-square text-white mx-1"></i></span></a>
                        <a href="#" class="text-muted"><span><i class="fa fa-twitter text-white mx-1"></i></span></a>
                        <a href="#" class="text-muted"><span><i class="fa fa-pinterest-p text-white mx-1"></i></span></a>
                        <a href="#" class="text-muted"><span><i class="fa fa-instagram text-white mx-1"></i></span></a></div>      
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <nav class="navbar navbar-expand-lg navbar-dark navbar-inverse">
                    <a class="navbar-brand" href="#"><img src="images/logo.png" class="img-fluid d-block" height="300" width="200"></a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarNavDropdown">
                        <div class="ml-auto">
                            <ul class="navbar-nav">
                                <li class="nav-item">
                                    <a class="nav-link" href="#">coronavirus</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#">Live tv</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#">India</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#">World</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#">Cites</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#">ipl 2020</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>
            </div>
        </div>
    </div>

<!-- /HEADER -->
<!-- Menu Bar -->
<div id="menu-bar">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <?php 

                    include 'config.php';

                    if(isset($_GET['cid'])){
                        $c_id = $_GET['cid'];
                    }

                    $sql = "SELECT * FROM category WHERE post > 0";
                    $result = mysqli_query($conn, $sql) or die("Query Failed");
                    if(mysqli_num_rows($result)){
                        $active = "";
                ?>
                <ul class='menu'>
                    <li><a href='index.php'>Home</a></li>
                    <?php 
                    while($row = mysqli_fetch_assoc($result)){
                        
                        if(isset($_GET['cid'])){
                            if($row['category_id'] == $c_id){
                                $active = "active";
                            }else{
                                $active = "";
                            }
                        }
                        echo "<li><a class='{$active}' href='category.php?cid={$row['category_id']}'>{$row['category_name']}</a></li>";
                    } 
                    ?>
                </ul>
                <?php } ?>
            </div>
        </div>
    </div>
</div>
<!-- /Menu Bar -->
