<?php

$con=mysqli_connect('localhost','root','root','jobportal');

mysqli_query($con,"update login set status='0' where city='Mumbai' OR city='Pune'");

if(false)
    {
 echo("Error description: " . mysqli_error($db1));
}
else{
header('location: index.php');
} 

?>