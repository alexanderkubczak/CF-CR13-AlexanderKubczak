<?php
$sql = "SELECT * FROM users";
$result = $connect->query($sql);
if ($result->num_rows > 0) {    
  echo "
	<p class='connecthead'>Connect with new people!</p>
	  <table class='allusers'>
	  <thead>
	    <tr>
	      <th>name</th>
	      <th>email</th>
	    </tr>
	  </thead>";
while($row = $result->fetch_assoc()) {
	echo
		'<tr>
			<td class="tablename">' .$row["user_name"]. '</td>
			<td class="tableemail">' .$row["user_email"]. '</td>
			<td><form action="addnewfriend.php" method="GET">
					  <input type="hidden" name="user_id" value="' .$row["user_id"]. '"/>
					  <button type="submit" class="btn btn-primary">add friend!
					  </button>
				</form>
			</td>		
	    </tr>';
    
  }  
echo '</table>';
}
?>