<?php 
   include 'config.php';
   $p_id = $_GET['id'];
   $c_id = $_GET['cid']; 

    $sql = "SELECT * FROM post WHERE post_id = {$p_id}";

    $result = mysqli_query($conn, $sql);
 
   if(mysqli_query($conn, $sql1)){
       header("Location: {$hostname}/post.php");
   }

   $sql = "DELETE FROM post WHERE post_id = {$p_id};";
    $sql .= "UPDATE category SET post = post-1 WHERE category_id = {$category}";
    if(mysqli_multi_query($conn, $sql)){
        header("Location: {$hostname}/post.php");

    }


?>