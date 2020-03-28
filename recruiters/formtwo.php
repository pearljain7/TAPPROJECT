<?php
/**
 * Created by PhpStorm.
 * User: Sreelal
 * Date: 7-04-2016
 * Time: 7:02 PM
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
include_once('notify.php');
//session_start();
notify();
$id = $_SESSION['elogid'];
//echo $id;
if(isset($_SESSION['elogid']))
{
$q = "select * from login join employer on login.log_id=employer.log_id WHERE login.log_id = $id";
//echo $q;
$result = mysqli_query($db1, $q);// or die("Selecting user profile failed");
$row = mysqli_fetch_array($result);
//  echo $row['log_id'];
    $_SESSION['eid']=$row['eid'];
    $_SESSION['name']=$row['ename'];
}
else
{
header('location:../login.php?msg=please_login');
}
if(isset($_GET['msg']) &&  $_GET['msg']=="jobposted") {

    ?>
    <script type="text/javascript"> alert("Job Successfully Posted");</script>
    <?php
}
?>
<!DOCTYPE HTML>
<html>
<head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Welcome <?php echo $row['ename']; ?></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />  
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>  
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script> 
</head>
<body>

<div id="nav">
    <nav>
        <div class="navbar" id="insidenav">

            <ul class="nav navbar-nav">
                <div class="navbar-header">
                    <a class="navbar-brand" href="#">TheApprenticeProject</a>
                </div>
                <li class="active"><a href="#">Profile<span class="sr-only">(current)</span></a></li>
                <li><a href="#">Notifications&nbsp;&nbsp;<span class="badge">&nbsp;&nbsp;<?php echo $notifycount; ?></span></a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Menu<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="profile.php">Form 1 Status</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="formtwo.php">Form 2 Status</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="interview.php">Phone Interview Status</a></li>

                    </ul>
                </li>
            </ul>
            <form class="navbar-form navbar-left" role="search" method="get" action="search.php">
                <div class="form-group">
                    <input type="text" name="keyword" class="form-control" placeholder="Search Jobseekers">
                </div>
                <button type="submit" class="btn btn-default"><span class="glyphicon glyphicon-search"> </span>Search</button>
            </form>
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Account<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Account Overview</a></li>
                        <li><a href="#">Account Settings</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="#">Edit Profile</a></li>
                    </ul>
                </li>
                <li><a href="../logout.php">Logout</a></li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </nav>
</div><!-- /.container-fluid -->
<div class="container">  
            <br />  
            <br />
			<br />
			<div class="table-responsive">  
				
				<span id="result"></span>
				<div id="live_data"></div>                 
			</div>  
		</div>
</body>
<script>  
$(document).ready(function(){  
    function fetch_data()  
    {  
        $.ajax({  
            url:"ft_select.php",  
            method:"POST",  
            success:function(data){  
				$('#live_data').html(data);  
            }  
        });  
    }  
    fetch_data();  
    $(document).on('click', '#btn_add', function(){  
        var first_name = $('#first_name').text();  
        var last_name = $('#last_name').text();  
        if(first_name == '')  
        {  
            alert("Enter First Name");  
            return false;  
        }  
        if(last_name == '')  
        {  
            alert("Enter Last Name");  
            return false;  
        }  
       /* $.ajax({  
            url:"insert.php",  
            method:"POST",  
            data:{first_name:first_name, last_name:last_name},  
            dataType:"text",  
            success:function(data)  
            {  
                alert(data);  
                fetch_data();  
            }  
        }) */ 
    });  
    
	/*function edit_data(id, text, column_name)  
    {  
        $.ajax({  
            url:"edit.php",  
            method:"POST",  
            data:{id:id, text:text, column_name:column_name},  
            dataType:"text",  
            success:function(data){  
                //alert(data);
				$('#result').html("<div class='alert alert-success'>"+data+"</div>");
            }  
        });  
    } 
    $(document).on('blur', '.first_name', function(){  
        var id = $(this).data("id1");  
        var first_name = $(this).text();  
        edit_data(id, first_name, "first_name");  
    });  
    $(document).on('blur', '.last_name', function(){  
        var id = $(this).data("id2");  
        var last_name = $(this).text();  
        edit_data(id,last_name, "last_name");  
    });  */
    $(document).on('click', '#accept_btn', function(){  
        var id=$(this).data("id5");  
        if(confirm("Are you sure you want to accept this facilitator?"))  
        {  
            $.ajax({  
                url:"ft_accept.php",  
                method:"POST",  
                data:({email:id}),  
                dataType:"text",  
                success:function(data){  
                    alert(data);  
                    fetch_data();  
                }  
            });  
        }  
    });  
      $(document).on('click', '#reject_btn', function(){  
        var id=$(this).data("id6");  
        if(confirm("Are you sure you want to reject this facilitator?"))  
        {  
            $.ajax({  
                url:"ft_reject.php",  
                method:"POST",  
                data:({email:id}),  
                dataType:"text",  
                success:function(data){  
                    alert(data);  
                    fetch_data();  
                }  
            });  
        }  
    });
});  
</script>
<link rel="stylesheet" href="../bootstrap/dist/css/bootstrap.min.css">
<link href="../css/main.css" rel="stylesheet">
<link href="../css/employer.css" rel="stylesheet">
<script src="../js/jquery-1.12.0.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
</html>