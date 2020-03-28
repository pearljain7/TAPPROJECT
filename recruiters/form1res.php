<?php
$host = "127.0.0.1";
$dbusername = "root";
$dbpassword = "root";
$dbname = "jobportal";

$conn = mysqli_connect($host,$dbusername,$dbpassword,$dbname);
if(!$conn){
  die("connection falied" .mysqli_connect_error());
}
$flag;
$sql ="SELECT email from login where status='0'";
$result=mysqli_query($conn,$sql);
if(mysqli_query($conn,$sql))
{
  echo "succesfully";
}
else
{
  echo "Error :" . mysqli_error($conn);

}
$body.="<a href=\"localhost/tapweb/net.php\">Click Here</a><p>";
if (mysqli_num_rows($result) > 0) {
    // output data of each row
    while($row = mysqli_fetch_assoc($result)) {
            $email=$row['email'];
            if($result)
                    {
                        
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
                        $mail->Subject = 'Root User';
                        $mail->Body = 'Congratulations! You have been accepted into the round 2! Please proceed ahead with: '.$body;
                        $mail->AddAddress($email);
                
                        if(!$mail->Send())
                        {
                            $flag=0;
                              
                        }
                        else
                        {
                           $flag=1;
                        }
                        $con= mysqli_connect('localhost','root','root') or die('UNABLE TO CONNECT');
                    }
                    else{
                        echo '<script type="text/javascript"> alert("Failed")</script>';
                    }
    }
    if($flag==1){
        echo '<script type="text/javascript"> alert("Email Sent for verification")</script>';
    }
    else{
        echo '<script type="text/javascript"> alert("Incorrect Email")</script>';
    }
} else {
    echo "0 results";
}

//rejected
$flag1;
$sql ="SELECT email from login where status='1'";
$result=mysqli_query($conn,$sql);
if(mysqli_query($conn,$sql))
{
  echo "succesfully";
}
else
{
  echo "Error :" . mysqli_error($conn);

}
if (mysqli_num_rows($result) > 0) {
    // output data of each row
    while($row = mysqli_fetch_assoc($result)) {
            $email=$row['email'];
            if($result)
                    {
                        
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
                        $mail->Subject = 'Root User';
                        $mail->Body = 'Sorry! You have been rejected from further rounds!';
                        $mail->AddAddress($email);
                
                        if(!$mail->Send())
                        {
                            $flag1=0;
                              
                        }
                        else
                        {
                           $flag1=1;
                        }
                        $con= mysqli_connect('localhost','root','root') or die('UNABLE TO CONNECT');
                    }
                    else{
                        echo '<script type="text/javascript"> alert("Failed")</script>';
                    }
    }
    if($flag==1){
        echo '<script type="text/javascript"> alert("Email Sent for verification")</script>';
    }
    else{
        echo '<script type="text/javascript"> alert("Incorrect Email")</script>';
    }
} else {
    echo "0 results";
}





header('location: profile.php');
mysqli_close($conn);
?>