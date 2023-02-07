<!--
 Käyttäjän luomiseen tehty sivusto. <?php osuus varmistaa tietokannasta ettei käyttäjänimi tai
 sähköposti ole jo käytössä siellä, salasanaosuus varmistaa salasanan olevan tarpeeksi pitkä
 sekä vaatii sen uudelleenkirjoituksen.
-->


<?php
// Include config file
require_once "/admin/a_cfg.php";

// Define variables and initialize with empty values
$username = $password = $confirm_password = $nimi = $email = "";
$username_err = $password_err = $confirm_password_err = $nimi_err = $email_err = "";

// Processing form data when form is submitted
if($_SERVER["REQUEST_METHOD"] == "POST"){

    // Validate username
    if(empty(trim($_POST["username"]))){
        $username_err = "Anna käyttäjätunnus.";
    } elseif(!preg_match('/^[a-zA-Z0-9_]+$/', trim($_POST["username"]))){
        $username_err = "Käyttäjänimessä voi olla vain kirjaimia, numeroita sekä alaviivoja.";
    } else{
        // Prepare a select statement
        $sql = "SELECT id FROM accounts WHERE username = ?";

        if($stmt = mysqli_prepare($link, $sql)){
            // Bind variables to the prepared statement as parameters
            mysqli_stmt_bind_param($stmt, "s", $param_username);

            // Set parameters
            $param_username = trim($_POST["username"]);

            // Attempt to execute the prepared statement
            if(mysqli_stmt_execute($stmt)){
                /* store result */
                mysqli_stmt_store_result($stmt);

                if(mysqli_stmt_num_rows($stmt) == 1){
                    $username_err = "Nimi on jo käytössä.";
                } else{
                    $username = trim($_POST["username"]);
                }
            } else{
                echo "Jokin meni pieleen, yritä uudellen.";
            }

            // Close statement
            mysqli_stmt_close($stmt);
        }
    }

    // Validate email
    if(empty(trim($_POST["email"]))){
        $email_err = "Anna sähköposti.";
    } else{
        // Prepare a select statement
        $sql = "SELECT id FROM accounts WHERE email = ?";

        if($stmt = mysqli_prepare($link, $sql)){
            // Bind variables to the prepared statement as parameters
            mysqli_stmt_bind_param($stmt, "s", $param_email);

            // Set parameters
            $param_email = trim($_POST["email"]);

            // Attempt to execute the prepared statement
            if(mysqli_stmt_execute($stmt)){
                /* store result */
                mysqli_stmt_store_result($stmt);

                if(mysqli_stmt_num_rows($stmt) == 1){
                    $email_err = "Sähköposti on jo käytössä.";
                } else{
                    $email = trim($_POST["email"]);
                }
            } else{
                echo "Jokin meni pieleen, yritä uudellen.";
            }

            // Close statement
            mysqli_stmt_close($stmt);
        }
    }

    // Validate password
    if(empty(trim($_POST["password"]))){
        $password_err = "Anna salasana.";
    } elseif(strlen(trim($_POST["password"])) < 6){
        $password_err = "Salasanassa oltava vähintään 6 kirjainta.";
    } else{
        $password = trim($_POST["password"]);
    }

// Validate nimi
    if(empty(trim($_POST["nimi"]))){
        $nimi_err = "Anna nimesi.";
    } elseif(strlen(trim($_POST["nimi"])) < 3){
        $password_err = "Nimessäsi oltava vähintään 3 kirjainta.";
    } else{
        $nimi = trim($_POST["nimi"]);
    }

    // Validate confirm password
    if(empty(trim($_POST["confirm_password"]))){
        $confirm_password_err = "Vahvista salasana.";
    } else{
        $confirm_password = trim($_POST["confirm_password"]);
        if(empty($password_err) && ($password != $confirm_password)){
            $confirm_password_err = "Salasana ei täsmää.";
        }
    }

    // Check input errors before inserting in database
    if(empty($username_err) && empty($password_err) && empty($confirm_password_err) && empty($email_err) && empty($nimi_err)){

        // Prepare an insert statement
        $sql = "INSERT INTO accounts (nimi, username, email, password) VALUES (?, ?, ?, ?)";

        if($stmt = mysqli_prepare($link, $sql)){
            // Bind variables to the prepared statement as parameters
            mysqli_stmt_bind_param($stmt, "ssss", $param_nimi, $param_username, $param_email, $param_password);

            // Set parameters
            $param_username = $username;
            $param_password = password_hash($password, PASSWORD_DEFAULT); // Creates a password hash
            $param_nimi = $nimi;
            $param_email = $email;



            // Attempt to execute the prepared statement
            if(mysqli_stmt_execute($stmt)){
                // Redirect to login page
                header("location: a_onnistui.html");
            } else{
                echo "Jokin meni pieleen, yritä uudellen.";
            }

            // Close statement
            mysqli_stmt_close($stmt);
        }
    }

    // Close connection
    mysqli_close($link);
}
?>


<!DOCTYPE html>
<html lang="fi">
<head>
    <meta charset="UTF-8">
    <title>Luo käyttäjä</title>
    <link rel="stylesheet" href="css/account.css">
</head>
<body>
    <h1 class="otsikko">Liity kulttiin</h1>
    <div class="background">
      <div class="transbox">
        <h2>Anna meille tietosi</h2><br>

        <form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>">
        <label for="nimi">Nimi:</label>
		<br><input type="text" name="nimi" id="nimi" <?php echo (!empty($nimi_err)) ? 'is-invalid' : ''; ?>" value="<?php echo $nimi; ?>">
		<span class="invalid-feedback"><?php echo $nimi_err; ?></span>
		<br><br>

		<label for="email">Sähköposti:</label>
		<br><input type="text" name="email" id="email" <?php echo (!empty($email_err)) ? 'is-invalid' : ''; ?>" value="<?php echo $email; ?>">
		<span class="invalid-feedback"><?php echo $email_err; ?></span>
          <br><br>

        <label for="username">Käyttäjätunnus:</label>
		<br><input type="text" name="username" id="username" <?php echo (!empty($username_err)) ? 'is-invalid' : ''; ?>" value="<?php echo $username; ?>">
		<span class="invalid-feedback"><?php echo $username_err; ?></span>
		<br><br>

		<label for="password">Salasana:</label>
		<br><input type="text" name="password" id="password" <?php echo (!empty($password_err)) ? 'is-invalid' : ''; ?>" value="<?php echo $password; ?>">
                <span class="invalid-feedback"><?php echo $password_err; ?></span>
            <br><br>


        <label>Toista salasana</label>
        <input type="password" name="confirm_password" class="form-control <?php echo (!empty($confirm_password_err)) ? 'is-invalid' : ''; ?>" value="<?php echo $confirm_password; ?>">
                <span class="invalid-feedback"><?php echo $confirm_password_err; ?></span>
                <br><br>

        <input type="submit" name="submit" value="Luo käyttäjä">

			<input type="button" value="Takaisin edelliselle sivulle" onclick="history.back()">

		</form>
      </div>
    </div>


</body>
</html>