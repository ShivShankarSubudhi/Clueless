<?php 
	session_start();
	require_once("database.php");
	if (!$_SESSION["valid_user"])
	{
	Header("Location: loginform.php");
	}
	
	$level = (int)mysql_real_escape_string($_SESSION["level"]);
	$answer = $_GET["answer"];

	$sql = "INSERT INTO logs (user,val,level) VALUES ('" . mysql_real_escape_string($_SESSION["valid_user"]) . "','" . mysql_real_escape_string($answer) . "','". $level . "')";

	$ref = mysql_query($sql);

	$sql = "SELECT * FROM levels WHERE id = '" . ($level + 1) . "'" ;
	
	$ref = mysql_query($sql);
	$row = mysql_fetch_assoc($ref);

	$ans = $row['answer'];
	if(!($ans))
	{
		$content .= "you are trying to answer a question that has not yet been decided";
	}


	else if(strcasecmp($answer, $row['answer']) == 0)
	{
		$level++;
		$_SESSION["level"] = $level;
		
		$content = "Answer is right.";
		if($row['final_round'] == 0)
		{
			$content = $content . "<a href = \"index.php\">Next Level</a>";
		}
		else
		{
			$content = $content . " <a href = \"index.php\">Congratulations!!!</a>";
		}
		
		$sql = "UPDATE users SET level = '" . $level . "' WHERE id = '" . $_SESSION["ids"] ."'"; 
		$ref = mysql_query($sql);
		$ref = mysql_query($sql);

		$content = $content;
		
	}
	else
		$content = "Wrong answer. <a href = \"index.php\">Try again</a>";
	
	require_once("theme/theme.php");
?>
