<?php
ob_start();
session_start();
require_once 'dbconnect.php';


if (isset($_SESSION['user'])=="") {
 header("Location: login.php");
 exit;
}

?>
<!DOCTYPE html>
<html>
<head>
<title>Friends!</title>


<?php include 'components/header.php';?>


<?php
$currentuser = $_SESSION['user'];
$sql = "SELECT * FROM users where user_id = $currentuser";
$result = $connect->query($sql);
$row = $result->fetch_assoc();
echo '<a class="homebutton" type="button" href="logout.php?logout">Log out</a>
  <h2 class="greeting"> Hello ' .$row["user_name"]. '! <br> Welcome to P E O P L E!</h2>';
	?>

 


<?php include 'components/showallusers.php'; ?>
<br>
<br>
<br>
<br>
<h2> This is your friendslist! </h2>
<?php include 'components/friendships.php'; ?>




<?php
$connect->close();
      ?>
</body>
</html>
<?php ob_end_flush(); ?>