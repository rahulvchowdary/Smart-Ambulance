<?php
    // If the values are posted, insert them into the database.
    if (isset($_POST['email']) && isset($_POST['pass'])){
        $fullname = $_POST['fullname'];
        $email = $_POST['email'];
        $pass = $_POST['pass'];
        //$cpass = $_POST['Cpass'];
        $connection = mysqli_connect("localhost", "root", "");
        mysqli_select_db($connection,"smartamb");
        
        $slquery = "SELECT 1 FROM ambdet WHERE ambemail = '$email'";
        $selectresult = mysqli_query($connection, $slquery);
        if(!$selectresult || mysqli_num_rows($selectresult) > 0)
        {
            echo "<script>
                    alert('User Already Exist');
                    window.location.href='SA_LP.html';
                </script>";
        }
        else{
            $query = "INSERT INTO `ambdet` (ambname, ambemail, ambpass) VALUES ('$fullname', '$email', '$pass')";
            $result = mysqli_query($connection, $query);
            if($result){
                echo "<script>
                    alert('Registered Successfully');
                </script>";
                header("Location: SA_LP.html"); /* Redirect browser */
                exit();
            }
            else{
                echo "not registered";
            }
        }
    }
    
    function test_input($data) 
    {
        if(isset($_POST['Submit']))
        {
            $data = trim($data);
            $data = stripslashes($data);
            $data = htmlspecialchars($data);
            return $data;
        }
    }
?>