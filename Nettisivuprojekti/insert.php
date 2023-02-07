<?php
	
	include 'cfg.php';

	function redirect() {
		header ('Location: onnistui.html');
	}


if (isset($_POST['submit']))
{
	$pvm = $_POST['pvm'];
	$nimi = $_POST['nimi'];
	$email = $_POST['email'];
	$ruoka = $_POST['ruokalista'];
	$erikoiset = $_POST['erikoiset'];
	$viesti = $_POST['viesti'];

	$sql = "INSERT INTO asiakkaat (pvm, nimi, email, ruoka, erikoiset, viesti)
	VALUES ('$pvm', '$nimi', '$email', '$ruoka','$erikoiset', '$viesti')";

	if (mysqli_query($conn, $sql)) {
		redirect();
        }
	


	mysqli_close($conn);
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Epäonnistui</title>
    <link rel="stylesheet" href="css/epaonnistui.css">
</head>
<body>
    <div class="transbox">
        <h1>Jokin meni pieleen...</h1>

        <br><br><br><br><br><br>

        <h2>Emme pystyneet varaamaan pöytääsi</h2>


        <h2>Yritä uudelleen</h2>
    </div>

</body>
</html>