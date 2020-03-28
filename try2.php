
<?php
    $email=$_POST['regName'];
    echo "".$email;
                    if($email)
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
                        $mail->Subject = 'Hello World';
                        $mail->Body = 'A test email!';
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

