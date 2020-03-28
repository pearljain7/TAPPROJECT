<?php  
 $connect = mysqli_connect("localhost", "root", "root", "jobportal");  
 $output = '';  
 $sql = "SELECT * FROM form where status='accepted'";  
 $result = mysqli_query($connect, $sql);  
 $output .= '  
      <div class="table-responsive">  
           <table class="table table-bordered">  
                <tr>  
                     <th width="10%">Email</th>  
                     <th width="40%">Club</th>  
                     <th width="40%">Expected Start Date</th>  
                     <th width="10%">Expected End Date</th>  
                     <th width="10%">Essay</th>
                     <th width="10%">Status</th>
                     <th width="900%">Review Phone Call</th>
                     
                </tr>';  
 $rows = mysqli_num_rows($result);
 if($rows > 0)  
 {  
	  if($rows > 10)
	  {
		  $delete_records = $rows - 10;
		  $delete_sql = "DELETE FROM form LIMIT $delete_records";
		  mysqli_query($connect, $delete_sql);
	  }
      while($row = mysqli_fetch_array($result))  
      {  
           $output .= '  
                <tr>  
                     <td>'.$row["email"].'</td>  
                     <td class="first_name" data-id1="'.$row["email"].'" contenteditable>'.$row["club"].'</td>  
                     <td class="last_name" data-id2="'.$row["email"].'" contenteditable>'.$row["expfrom"].'</td>  
                     <td class="last_name" data-id3="'.$row["email"].'" contenteditable>'.$row["expto"].'</td>
                     <td class="last_name" data-id4="'.$row["email"].'" contenteditable>'.$row["message"].'</td>
                     <td class="last_name" data-id4="'.$row["email"].'" contenteditable>'.$row["status"].'</td>
                     <td><button type="button"  name="accept_btn" id="accept_btn" data-id5="'.$row["email"].'" class="btn btn-xs btn-danger btn_delete">Excellent</button><p></p><button type="button"  name="accept_btn" id="accept_btn" data-id5="'.$row["email"].'" class="btn btn-xs btn-danger btn_delete">Good</button><p></p>
                     <button type="button" name="reject_btn" id="reject_btn" data-id6="'.$row["email"].'" class="btn btn-xs btn-danger btn_delete">Bad</button></td>  
                </tr>  
           ';  
      }  
     /* $output .= '  
           <tr>  
                <td></td>  
                <td id="first_name" contenteditable></td>  
                <td id="last_name" contenteditable></td>
                <td id="last_name" contenteditable></td> 
                
                <td><button type="button" name="btn_add" id="btn_add" class="btn btn-xs btn-success">+</button></td>  
           </tr>  
      ';  */
 }  
 else  
 {  
      $output .= '
				<tr>  
					<td></td>  
					<td id="first_name" contenteditable></td>  
					<td id="last_name" contenteditable></td>  
					<td><button type="button" name="btn_add" id="btn_add" class="btn btn-xs btn-success">+</button></td>  
			   </tr>';  
 }  
 $output .= '</table>  
      </div>';  
 echo $output;  
 ?>