<?php	
	session_start();
	require_once("database.php");
	$password = sha1(mysql_real_escape_string($_POST["password"]));
	$sql = "SELECT * FROM users WHERE name = '" . $_POST["name"] . "'";
	$ref = mysql_query($sql);
	$row = mysql_fetch_assoc($ref);
	
	if($row == NULL)
	{
		$content = "Its not your friends we asked";
		$log = "Tried login in with wrong username and password was " . $_POST["password"];
	}
	else if($row["password"] == $password)
	{
 //echo "<meta http-equiv='Refresh' content='0; url=index.php'>"; 
		$_SESSION["ids"] = $row["id"];
		$_SESSION["valid_user"]= $_POST["name"];
		$_SESSION["level"] = $row["level"];
		$_SESSION["valid_fname"] = $row["fname"];

		$content .= "The Event will start from 13th February 2013 10:30pm onwards due to a technical glitch.For further details contact: Sukalpa Mishra:-8895510665,Shiv Shankar Subudhi:-8763347319,Ashutosh Gupta:-9777918712,Angsuman Bhanjdeo:-9040185297";
		if($row["role"] == NULL)
		{
			$_SESSION["role"] = 0;
		}
		else 
			$_SESSION["role"] = $row["role"];
		$log = "Has logged in correctly";
	
	}
	else
	{
		$content .= "What were you thinking? That wasn't your password!";
		$log = "Has entered the wrong password ie " . $_POST["password"];
	}
	$sqllog = "INSERT INTO accesslogs (ip, user, val) VALUES ('". mysql_real_escape_string($_SERVER['REMOTE_ADDR']) . "','" . mysql_real_escape_string($_POST["name"]) . "','" . mysql_real_escape_string($log) . "')";
	$ref = mysql_query($sqllog);
	$content .= "</div><br /><br />";
	require_once("theme/clueless/theme.php");
?>
