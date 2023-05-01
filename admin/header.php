<?php
    include 'config.php';
    session_start();

    if(!isset( $_SESSION['username'])){
        header("Location: {$hostname}/");
    }
?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <title>ADMIN Panel</title>
        <!-- Bootstrap -->
        <link rel="stylesheet" href="../css/bootstrap.min.css" />
        <!-- Font Awesome Icon -->
        <link rel="stylesheet" href="../css/font-awesome.css">
        <!-- Custom stlylesheet -->
        <link rel="stylesheet" href="../css/main.css">
    </head>
    <body>
        <!-- HEADER -->
        <div id="header-admin" style="background-color: orangered;">
            <!-- container -->
            <div class="container">
                <!-- row -->
                <div class="row">
                    <!-- LOGO -->
                    <div class="col-md-2">
                        <h1 class="text-light">Dashboard</h1>
                    </div>
                    <!-- /LOGO -->
                    <!---- user Show------>
                    <div class="offset-md-4 col-md-3">
                        <a class="admin-logout" href="#" style="text-transform:lowercase;"> <i class="fa fa-user-o" style="color:#fff;font-size:16px;"></i>  
                        <?php echo $_SESSION['username']; ?> </a>
                    </div>
                    <!-- /user show -->
                      <!-- LOGO-Out -->
                    <div class="offset-md-2  col-md-1">
                        <a href="logout.php" class="admin-logout" > logout</a>
                    </div>
                    <!-- /LOGO-Out -->
                </div>
            </div>
        </div>
        <!-- /HEADER -->
        <!-- Menu Bar -->
        <div id="admin-menubar">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                       <ul class="admin-menu">
                            <li>
                                <a href="post.php">Post</a>
                            </li>
                            <?php 
                                if($_SESSION['user_role'] == 1){
                            ?>
                        
                            <li>
                                <a href="category.php">Category</a>
                            </li>
                            <li>
                                <a href="users.php">Users</a>
                            </li>
                            <?php } ?>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- /Menu Bar -->
