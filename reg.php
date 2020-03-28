<?php


 */
 include_once('../config.php');
// Data retreived  begins here
$email=$_POST['useremail'];
//echo $email;
$password=$_POST['pass1'];
$hash = password_hash($password, PASSWORD_DEFAULT);
//echo $password;
$name=$_POST['uname'];
$mobile=$_POST['mobno'];
$experience=$_POST['experience'];
$skills=$_POST['skills'];
$ug=$_POST['ugcourse'];
$pg=$_POST['pgcourse'];
$countryid=$_POST['country'];
$stateid=$_POST['state'];
$cityid=$_POST['city'];
$location="";
$type="jobseeker";


?>