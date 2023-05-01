<?php 
    include 'config.php';
    if(empty($_FILES['new-image']['name'])){
        $file_name = $_POST['old-image'];
    }else{
        $error = array();

        $file_name = $_FILES['new-image']['name'];
        $file_type = $_FILES['new-image']['type'];
        $file_size = $_FILES['new-image']['size'];
        $file_tmp = $_FILES['new-image']['tmp_name'];
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
    
    $sql = "UPDATE post SET title = '{$_POST['post_title']}',description = '{$_POST['postdesc']}',category = '{$_POST['category']}',post_img = '{$file_name}' WHERE post_id = {$_POST['post_id']}" ;
    if(mysqli_query($conn,$sql)){
        header("location: {$hostname}/post.php");
    }
    else{
        echo "query failed";
    }


?>