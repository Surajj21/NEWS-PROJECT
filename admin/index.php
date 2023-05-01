<?php
    include 'config.php';
    session_start();

    if(isset( $_SESSION['username'])){
        header("Location: {$hostname}/post.php");
    }
?>

<!doctype html>
<html>
   <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>ADMIN | Login</title>
        <link rel="stylesheet" href="../css/bootstrap.min.css" />
        <link rel="stylesheet" href="font/font-awesome-4.7.0/css/font-awesome.css">
        <link rel="stylesheet" href="../css/style.css">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
		<style>
			body{
				background-image:url("images/bg.jpg");
				background-size:cover;
			}
			.col-md-5{
				 border-radius:5px;
				 background-color:#fff;
				 
				 box-shadow: rgba(0, 0, 0, 0.3) 0px 19px 38px, rgba(0, 0, 0, 0.22) 0px 15px 12px;
			}
		</style>
    </head>

    <body>
        <div id="wrapper-admin" class="body-content">
            <div class="container" style="margin-top:120px;">
                <div class="row">
                    <div class="offset-md-4 col-md-5 animate__animated animate__fadeInDownBig animate__delay-0.2s p-5">
                        <img class="logo mb-3"  src="images/logo.png">
                        <!-- Form Start -->
                        <form  action="<?php $_SERVER['PHP_SELF'] ?>" method ="POST">
                            <div class="form-group">
                                <label>Username</label>
                                <input type="text" name="username" class="form-control" placeholder="" required>
                            </div>
                            <div class="form-group">
                                <label>Password</label>
                                <input type="password" name="password" class="form-control" placeholder="" required>
                            </div>
                            <input type="submit" name="login" class="btn btn-primary" value="login" />
                        </form>
                        <?php 
                            if(isset($_POST['login'])){
                                include 'config.php';
                                $username= mysqli_real_escape_string($conn,$_POST['username']);
                                $password = mysqli_real_escape_string($conn,md5($_POST['password']));
                              
                                $sql = "SELECT user_id, username,first_name, last_name, role FROM user WHERE username = '{$username}' AND password = '{$password}'";
                                $result = mysqli_query($conn, $sql) or die("Query Failed");
                                if(mysqli_num_rows($result)){
                                    while($row = mysqli_fetch_assoc($result)){
                                        session_start();
                                        $_SESSION['username'] = $row['username'];
                                        $_SESSION['first_name'] = $row['first_name'];
                                        $_SESSION['last_name'] = $row['last_name'];
                                        $_SESSION['user_id'] = $row['user_id'];
                                        $_SESSION['user_role'] = $row['role'];
                                        header("Location: {$hostname}/post.php");
                                    }
                                }else{
                                    echo "<div class='alert alert-danger mt-3'>Username and Passsword are not Matched.</div>";
                                }
                            }
                        
                        ?>
                        <!-- /Form  End -->
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
