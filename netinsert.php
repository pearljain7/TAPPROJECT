<?php
$host = "127.0.0.1";
$dbusername = "root";
$dbpassword = "root";
$dbname = "jobportal";

$email = $_POST['email'];
$club = $_POST['club'];
$expfrom = $_POST['expfrom'];
$expto = $_POST['expto'];
$message = $_POST['message'];
$conn = mysqli_connect($host,$dbusername,$dbpassword,$dbname);
if(!$conn){
  die("connection falied" .mysqli_connect_error());
}

$sql ="INSERT INTO form(email,club,expfrom,expto,message) values('$email','$club','$expfrom','$expto','$message')";

if(mysqli_query($conn,$sql))
{
  echo "Record inserted succesfully";
}
else
{
  echo "Error :" . mysqli_error($conn);

}
mysqli_close($conn);
?>