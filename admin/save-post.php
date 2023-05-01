<?php
    include 'config.php';

    if(isset($_FILES['fileToUpload'])){
        $errors = array();

        $file_name = $_FILES['fileToUpload']['name'];
        $file_type = $_FILES['fileToUpload']['type'];
        $file_size = $_FILES['fileToUpload']['size'];
        $file_tmp = $_FILES['fileToUpload']['tmp_name'];
        $file_exa = explode(".",$file_name);
        $file_exb = end($file_exa);
        $file_ext = strtolower($file_exb);
        $extension = array("jpg","jpeg","png");

        if(in_array($file_ext, $extension) === false){
            $errors[] = "This type of file are not allowed. Please choose a JPG or PNG file."; 
        }
        if($file_size > 2097152){
            $errors[] = "File size only 2mb or Lower.";
        }

        if(empty($errors) == true){
            move_uploaded_file($file_tmp,"upload/".$file_name);
        }else{
            print_r($errors);
            die();
        }


    }
    session_start();
    $title = mysqli_real_escape_string($conn, $_POST['post_title']);
    $description = mysqli_real_escape_string($conn, $_POST['postdesc']);
    $category = mysqli_real_escape_string($conn, $_POST['category']);
    $date = date("d M, Y");
    $author = $_SESSION['user_id'];

    $sql = "INSERT INTO post (title, description, category, post_date, author, post_img)
            VALUES ('{$title}', '{$description}', {$category}, '{$date}', {$author},'{$file_name}');";
    $sql .= "UPDATE category SET post = post+1 WHERE category_id = {$category}";
    if(mysqli_multi_query($conn, $sql)){
        header("Location: {$hostname}/post.php");

    }

?>