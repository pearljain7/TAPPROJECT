<html>
<?php
/**
 * Created by PhpStorm.
 * User: Sreelal
 * Date: 09-04-2016
 * Time: 06:20 AM
 * Online-Job-Portal - A web application built on PHP HTML & javascript
Copyright (C) 2016 Sreelal C

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.

 */
 include_once('../config.php');
session_start();

// Data retreived  begins here
$email=$_POST['email'];

//echo $email;
$password=$_POST['pass1'];
$hash = password_hash($password, PASSWORD_DEFAULT);
//echo $password;
$name=$_POST['uname'];
$mobile=$_POST['mobno'];
$experience=$_POST['experience'];
$clubs=$_POST['clubs'];
$ug=$_POST['ugcourse'];
$pg=$_POST['pgcourse'];
$city=$_POST['city'];
$location="";
$type="facilitator";

// data retreived ends here

// now wants to fetch data from location db

/*mysqli_select_db($db2,"location");
$query1=mysqli_query($db2,"select name from countries WHERE id = '$countryid'")  or die("Wrong Query");
$row = mysqli_fetch_assoc($query1);
$country= $row['name'];

$query2=mysqli_query($db2,"select name from states WHERE id = '$stateid'")  or die("Wrong Query");
$row = mysqli_fetch_assoc($query2);
$state= $row['name'];
//echo $state;

$query3=mysqli_query($db2,"select name from cities WHERE id = '$cityid'")  or die("Wrong Query");
$row = mysqli_fetch_assoc($query3);
$city= $row['name'];
//echo $city;
$location=$country.",".$state.",".$city;
//echo $location;
mysqli_close($db2); */
mysqli_select_db($db1,"jobportal");

$query4="INSERT INTO login (email,password,name,city,clubs,usertype,status) VALUES ('$email','$hash','$name','$city','$clubs','$type',1)";
    $result1 = mysqli_query($db1,$query4) or die("Cant Register , The user email may be already existing");

                    if($result1)
                    {
                        echo '<script type="text/javascript"> alert("REGISTERED")</script>';
                        
                        require_once('PHPMailer/PHPMailerAutoload.php');
                
                        $mail = new PHPMailer();
                        $mail->isSMTP(); 
                        $mail->SMTPAuth = true;
                        $mail->SMTPSecure = 'ssl';
                        $mail->Host = 'smtp.gmail.com';
                        $mail->Port = '465';
                        $mail->isHTML();
                        $mail->Username = 'simranjaveri10@gmail.com';
                        $mail->Password = 'srjP10699';
                        $mail->SetFrom('no-reply');
                        $mail->Subject = 'Hello from TAP';
                        $mail->Body = 'Thankyou for applying. We will get back to you shortly.Your reg ID is';
                        $mail->AddAddress($email);
                        if(!$mail->Send())
                        {

                            echo '<script type="text/javascript"> alert("Incorrect Email")</script>';  
                        }
                        else
                        {
                            echo '<script type="text/javascript"> alert("Email Sent for verification")</script>';
                        }
                        $con= mysqli_connect('localhost','root','root') or die('UNABLE TO CONNECT');
                    }
                    else{
                        echo '<script type="text/javascript"> alert("Failed")</script>';
                    }
if (!$result1)
{
 echo("Error description: " . mysqli_error($db1));
}
else{
header('location: profile.php');
} 

?>


</html>
