// Caps Lock
var input = document.getElementById("myInput");
var text = document.getElementById("text");
input.addEventListener("keyup", function (event) {

    if (event.getModifierState("CapsLock")) {
        document.getElementById("text").innerHTML = "Caution! Caps lock is ON.";
    } else {
        document.getElementById("text").innerHTML = "";
    }
});

// validation
function Validate() {
    var Fname = document.getElementById("Fullname").value;
    var Email = document.getElementById("Email").value;
    var Password = document.getElementById("Pass").value;
    var CPassword = document.getElementById("Cpass").value;
    //FIRST NAME
    if (Fname == "") {
        document.getElementById("Fullname_error").innerHTML;
        return false;
    }
    if (Fname.length < 3) {
        document.getElementById("Fullname_error").innerHTML;
        return false;
    }
    if (Fname != (/^[A-Za-z]+$/)) {
        document.getElementById("Fullname_error").innerHTML;
        true;
    }
    else {
        document.getElementById("Fullname_error").innerHTML;
        return false;
    }
    //EMAIL
    if (Email == "") {
        document.getElementById("email_error").innerHTML;
        return false;
    }
    if (Email.indexOf('@') == 0) {
        document.getElementById("email_error").innerHTML;
        return false;
    }
    if (Email.charAt(Email.length - 4) != '.') {
        document.getElementById("email_error").innerHTML;
        return false;
    }
    else {
        document.getElementById("email_error").innerHTML;
        true;
    }
    //Password
    if (Password == "") {
        document.getElementById("password_error").innerHTML;
        return false;
    }
    if (Password.length <= 7) {
        document.getElementById("password_error").innerHTML;
        return false;
    }
    else {
        document.getElementById("password_error").innerHTML;
        true;
    }
    //Confirm Password
    if (CPassword == "") {
        document.getElementById("cpassword_error").innerHTML;
        return false;
    }
    if (Password != CPassword) {
        document.getElementById("cpassword_error").innerHTML;
        return false;
    }
    else {
        document.getElementById("cpassword_error").innerHTML;
        true;
    }
}

// Toggle Password
function password() {
    var x = document.getElementById("pass");
    var y = document.getElementById("cpass");
    if (x.type === "password" && y.type === "password") {
        x.type = "text";
        y.type = "text";
    }
    else {
        x.type = "password";
        y.type = "password";
    }
}
