<?php
    // If the values are posted, insert them into the database.
    if (isset($_POST['loc']) && isset($_POST['name'])){
        $loc = $_POST['loc'];
        $docdesig = $_POST['docdesig'];
        $name = $_POST['name'];
        //$cpass = $_POST['Cpass'];
        $connection = mysqli_connect("localhost", "root", "");
        mysqli_select_db($connection,"smartamb");
        
        $slquery = "SELECT 1 FROM patdet WHERE patname = '$name'";
        $selectresult = mysqli_query($connection, $slquery);
        if(!$selectresult || mysqli_num_rows($selectresult) > 0)
        {
            echo "<script>
                    alert('User Already Exist');
                    window.location.href='SA_FP.php';
                </script>";
        }
        else{
            $query = "update `patdet` set patloc = '$loc', patprob = '$docdesig' WHERE patname = $name";
            $result = mysqli_query($connection, $query);
            if($result){
                echo "<script>
                    alert('Registered Successfully');
                </script>";
                header("Location: SMS.php"); /* Redirect browser */
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