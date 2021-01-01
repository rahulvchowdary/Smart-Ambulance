<?php
include "config.php";

if(isset($_POST['Submit'])){

    $uname = mysqli_real_escape_string($con,$_POST['username']);
    $password = mysqli_real_escape_string($con,$_POST['pass']);

    if ($uname != "" && $password != ""){

        $sql_query = "select count(*) as cntUser from ambdet where ambemail='".$uname."' and ambpass='".$password."'";
        $result = mysqli_query($con,$sql_query);
        $row = mysqli_fetch_array($result);

        $count = $row['cntUser'];

        if($count > 0){
            $_SESSION['username'] = $uname;
            header('Location: SA_DP.html');
        }else{
            echo "Invalid username and password";
        }

    }

}