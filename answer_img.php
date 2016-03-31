<?php 
	session_start();
	require_once("database.php");
	if (!$_SESSION["valid_user"])
	{
	Header("Location: loginform.php");
	}
	
	$level = (int)mysql_real_escape_string($_SESSION["level"]);
	
	//$sql = "INSERT INTO logs (user,val,level) VALUES ('" . mysql_real_escape_string($_SESSION["valid_user"]) . "','" . mysql_real_escape_string($answer) . "','". $level . "')";
	//$ref = mysql_query($sql);

	$sql = "SELECT * FROM levels WHERE id = '" . ($level + 1) . "'" ;
	
	$ref = mysql_query($sql);
	$row = mysql_fetch_assoc($ref);

	header("Location: answer.php?answer=" . $row["answer"]);
	
	require_once("theme/theme.php");
?>
