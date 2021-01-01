<!DOCTYPE html>
<html>
<head>
<title>Sending the SMS Noti</title>
</head>
<body>

<form method="post">

</form>

</body>
</html>

<?php

if(isset($_POST["Submit"])) {
// Authorisation details.
$username = "varunrudrangi1@gmail.com";
$hash = "c023488c30adcedff6ab244d08fa3065d7e97059d9ee20e61ea5a2bc3f041084";

// Config variables. Consult http://api.textlocal.in/docs for more info.
$test = "0";

// Data for text message. This is the text message data.
$sender = "TXTLCL"; // This is who the message appears to be from.
$numbers = "8328616755"; // A single number or a comma-seperated list of numbers
$message = "A Patient named Manish of Age 20 and Sex Male is being brought to the hospital for medical purposes. Make sure the arrangements are made ready. Thank you!";
// 612 chars or less
// A single number or a comma-seperated list of numbers
$message = urlencode($message);
$data = "username=".$username."&hash=".$hash."&message=".$message."&sender=".$sender."&numbers=".$numbers."&test=".$test;
$ch = curl_init('http://api.textlocal.in/send/?');
curl_setopt($ch, CURLOPT_POST, true);
curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
$result = curl_exec($ch); // This is the result from the API
curl_close($ch);

if(!$result){
?>
<script>alert('Message not sent!')</script>
<?php
}
else{
echo $result;
?>
<script>alert('Hospital has been notified!')</script>
<?php
}

}
?>