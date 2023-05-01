<?php 
 if($_SESSION['user_role'] == 0){
    header("Location: {$hostname}/post.php");
}
    $u_id = $_GET['id'];

    include 'config.php';

    $sql1 = "DELETE FROM user WHERE user_id = '{$u_id}'";
  
    if(mysqli_query($conn, $sql1)){
        header("Location: {$hostname}/users.php");
    }

?>