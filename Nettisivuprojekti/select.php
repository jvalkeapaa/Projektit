<?php
	include 'cfg.php';

	$sql = "SELECT id, pvm, nimi, email, ruoka, erikoiset, viesti FROM Asiakkaat";
	$result = mysqli_query($conn, $sql);

	if (mysqli_num_rows($result) > 0) {
		// output data of each row
		while($row = mysqli_fetch_assoc($result)) {
			echo "id: " . $row["id"]. " - Name: " . $row["nimi"] . " - Date: " . $row["pvm"] . " - Email: " . $row["email"] . " - Toiveruoka: " . $row["ruoka"] . " - Erikoisruokavaliot: " . $row["erikoiset"] . " - Message: " . $row["viesti"] . "<br>";
		}
	} else {
		echo "0 results";
	}

	mysqli_close($conn);



?>