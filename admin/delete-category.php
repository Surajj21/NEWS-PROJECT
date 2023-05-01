<?php 
     if($_SESSION['user_role'] == 0){
        header("Location: {$hostname}/post.php");
    }
    $c_id = $_GET['id'];

    include 'config.php';

    $sql1 = "DELETE FROM category WHERE category_id = '{$c_id}'";
  
    if(mysqli_query($conn, $sql1)){
        header("Location: {$hostname}/category.php");
    }

?>