<?php  
	$connect = mysqli_connect("localhost", "root", "root", "jobportal");
    $email=$_POST['email'];
	$sql = "Update form set status='accepted' WHERE email = '$email'";  
$body.="<a href=\"localhost/TutorialHtml5Tennis/\">Click Here</a><p>";
	if(mysqli_query($connect, $sql))  
	{  
		echo "Data updated";
        //echo ".$_POST["email"].";
                       
                        
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
                        $mail->Subject = 'Hello World';
                        $mail->Body = 'Congratulations! You have been accepted for the phone interview round! Please proceed ahead with: '.$body;
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


 ?>

