<?php
    include 'db.php';
    // signup form
    if(isset($_POST['name']) && isset($_POST['email']) && isset($_POST['password'])){
        $name = $_POST['name'];
        $email = $_POST['email'];
        $password = md5($_POST['password']);

        $sql = "INSERT INTO `user` (`id`, `name`, `email`, `phone`, `address`, `profile_pic`, `role`, `password`, `create_date`) VALUES (NULL, '$name', '$email', NULL, '', '', '', '$password', current_timestamp());";

        // print_r($sql);
        $result = mysqli_query($conn, $sql);

        if ($result) {
            print_r("Data Recorded!");
        }else{
            print_r("Data Not Recorded!");
        }
    }
    
    elseif (isset($_POST['login_email']) && isset($_POST['login_password'])) {
        $login_email = $_POST['login_email'];    
        $login_password = md5($_POST['login_password']);
        
        $sql = "SELECT * FROM  `user` WHERE email='$login_email' AND password='$login_password' ";

        $result = mysqli_query($conn, $sql);

        if (mysqli_num_rows($result) == 1) {
            $row = mysqli_fetch_assoc($result);
            session_start();
            $_SESSION['auth']['id'] = $row['id'];
            $_SESSION['auth']['name'] = $row['name'];
            
            $arr = array("status"=>'success', "message"=>'Successfully Login!');
        }else{
            $arr = array("status"=>'error', "message"=>'Login faild! Wrong info, Try again');
        }
        echo json_encode($arr);
    }

    

?>