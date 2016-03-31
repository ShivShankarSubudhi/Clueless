<?php
session_start();

for ($i=1; $i<=($_SESSION["level"] + 1) ; $i++)
{
	setcookie($i, '', 1);
}

session_unset();
session_destroy();



// Logged out, return home.
Header("Location: index.php");
?>
