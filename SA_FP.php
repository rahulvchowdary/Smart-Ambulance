<!doctype html>
<?php include('db.php');
include('Config.php')?>

<html>
    <head>
        <meta charset="utf-8">
        <title>E-Xcel Details Page</title>
        <link rel="stylesheet" href="Style1.css">
    </head>
<html>    
    <body>
        <div class="box">
            <h2>Details</h2>
            <form action="SA_FP.php" method="POST" >
                <div class="inputBox">
                    <input type="text" name="loc" id="loc" required="">
                    <label  >Location</label>
                </div>
                <div class="inputBox">
                    <label  >Problem</label><br><br>
                     </div><br>
                <div class="radio">
                <label class="radio-inline">
                <input type="radio" name="docdesig" checked id="docdesig" value="Orthopedic"> Orthopedic
                </label>
                <label class="radio-inline">
                <input type="radio" name="docdesig" id="docdesig" value="Neurologist"> Neurologist
            	</label>
                <label class="radio-inline">
                <input type="radio" name="docdesig" id="docdesig" value="Cardiology"> Cardiology
                </label>
                <label class="radio-inline">
                <input type="radio" name="docdesig" id="docdesig" value="Gynecologist"> Gynecologist
                </label>
                <label class="radio-inline">
                <input type="radio" name="docdesig" id="docdesig" value="General Physician">General Physician
                </label><br><br>
            	</div>
                <div class="buttonHolder">
               	<input type="Submit" name="" onclick="" value="Search"><br><br>
               	</div>
                <?php
                    // If the values are posted, insert them into the database.
                    if (isset($_POST['loc']) && isset($_POST['docdesig'])){
                        $loc = $_POST['loc'];
                        $docdesig = $_POST['docdesig'];
                        //$cpass = $_POST['Cpass'];
                        $connection = mysqli_connect("localhost", "root", "");
                        mysqli_select_db($connection,"smartamb");
                        $slquery = "SELECT * FROM hosdet WHERE location = '$loc' and docdesig = '$docdesig'";
                        $selectresult = mysqli_query($connection, $slquery);

                        ?>
                        <div class="inputBox" >
                            <select>
                            <?php 
                            while ($row = mysqli_fetch_array($selectresult)) 
                            {
                            ?>
                                <option values="h1"><?php echo $row['hosname']; ?></option>
                            <?php 
                            } ?>
                            </select>
                        </div>

                        <?php
                    }
                ?>
                <br>

            </form>
            <form action="SMS.php" method="POST" >
                <div class="buttonHolder">
                    <input type="Submit" name="Submit" value="Notify">
                </div>
</form>

        </div>
    </body>
</html>