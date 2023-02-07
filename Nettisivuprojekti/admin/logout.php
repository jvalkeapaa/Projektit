<!--
 Sivusto joka kirjaa käyttäjän ulos admin-sivuilta.
 Uloskirjautuminen vaaditaan sillä sivu ei kirjaa käyttäjää automaattisesti ulos.
 -->

<?php
// Initialize the session
session_start();
 
// Unset all of the session variables
$_SESSION = array();
 
// Destroy the session.
session_destroy();
 
// Redirect to login page
header("location: index.php");
exit;
?>
