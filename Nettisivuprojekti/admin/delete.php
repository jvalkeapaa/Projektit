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

if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

$sql = "DELETE FROM accounts WHERE id = $id";

    if (mysqli_query($conn, $sql)) {

         mysqli_close($conn);
         header("location: muokkaa.php");
         exit;
    }

    else
    {
         echo "Error deleting record: " . mysqli_error($conn);
    }

?>