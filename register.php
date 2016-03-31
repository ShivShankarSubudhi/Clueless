<?php

	$content = "<h2>Registration Form</h2><br><br><form name = \"register\" action = \"registeraction.php\"><table><tr><td>Username: </td><td><input type = \"text\" name = \"username\"/></td></tr><br><tr><td>Alias:</td> <td><input type = \"text\" name = \"alias\"/></td></tr><br><tr><td>Password: </td><td><input type = \"password\" name = \"password\"/></td></tr><br><tr><td>College:</td><td><input type = \"text\" name = \"college\"></td></tr><br><tr><td>Phone Number:</td> <td><input type = \"text\" name = \"phone\"></td></tr><br><tr><td>Email:</td> <td><input type = \"text\" name = \"email\"></td></tr><br><tr><td><input type = \"submit\" value = \"submit\"></td></tr></table></form><br><br>Please do not leave any field blank cuz you will have to come back to fill them";
	require_once("theme/clueless/theme.php");

?>
