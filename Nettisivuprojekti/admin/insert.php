<!--
 Tietokannalle luotu configuration tiedosto
 -->

<?php
	
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "arkham";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

$id = $_GET['id'];
$nimi = $_POST["nimi"];
$username = $_POST["username"];
$email = $_POST["email"];


	$sql = "UPDATE accounts SET nimi='$nimi', username='$username', email='$email'
	WHERE id = '$id'";

	if (mysqli_query($conn, $sql)) {
		header ('Location: muokkaa.php');
		exit;
        }

    else
    {
         echo "Error: " . mysqli_error($conn);
    }


?>
