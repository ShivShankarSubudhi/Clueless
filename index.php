<?php 
	session_start();
	require_once("database.php");
	if (!$_SESSION["valid_user"])
	{
	Header("Location: loginform.php");
	}
	else if($_SESSION["role"] == 10)
	{
		$content = "<h2>Levels</h2>";
		$pagetype = "admin";
		$sql = "SELECT * FROM levels ORDER BY id";
		$ref = mysql_query($sql);
		while($row = mysql_fetch_assoc($ref))
		{
			$content = $content . "<br>" . $row["name"] . "&nbsp; : &nbsp; <a href = \"editlevels.php?l=" . $row["name"] ."\">" . $row["title"] . "</a>";
		}
		$sql = "SELECT * FROM accesslogs ORDER BY time DESC LIMIT 0,100";
		$ref = mysql_query($sql);
		$content = $content . "<br><br><h2>Access Logs</h2>";
		while($row = mysql_fetch_assoc($ref))
		{
			$content = $content . "<br>" . $row['user'] . ":&nbsp;" . $row['val'] . "&nbsp; From" . $row['ip'];
		}
		$sql = "SELECT * FROM users WHERE role != 10 ORDER BY level DESC,passtime ASC";
		$ref = mysql_query($sql);
		$sidebaradmin = "<h2>leaderboard</h2>";
		while($row = mysql_fetch_assoc($ref))
		{
			
			 $sidebaradmin = $sidebaradmin . "<br><a href = \"edituser.php?id=" . $row["id"] . "\">" . $row["name"] . "</a>&nbsp;" . $row["level"] . "&nbsp;" . $row["fname"];
		}
		$sql = "SELECT * FROM logs ORDER BY time DESC LIMIT 0,100";
		$ref = mysql_query($sql);
		$sidebaradmin = $sidebaradmin . "<br><br><h2>logs</h2>";
		while($row = mysql_fetch_assoc($ref))
		{
			
			 $sidebaradmin = $sidebaradmin . "<br>" . $row["user"] . "&nbsp; : &nbsp;" . $row["val"];
		}
		
		$_SESSION["pagetype"] = $pagetype;
		$_SESSION["sidebaradmin"] = $sidebaradmin;
	}
	else if($_SESSION["role"] >= 6)
	{
		$pagetype = "admin";
		$content = "<h2>Levels</h2><br>";
		$sql = "SELECT * FROM levels ORDER BY id";
		$ref = mysql_query($sql);
		while($row = mysql_fetch_assoc($ref))
		{
			$content .= "<br>" . $row["name"] . "&nbsp; : &nbsp; <a href = \"editlevels.php?l=" . $row["name"] ."\">" . $row["title"] . "</a>";
		}
		$sql = "SELECT * FROM users WHERE role != 10 ORDER BY level DESC, passtime ASC";
		$ref = mysql_query($sql);
		$sidebaradmin = "<h2>leaderboard</h2>";
		while($row = mysql_fetch_assoc($ref))
		{
			
			 $sidebaradmin .= "<br><a href = \"edituser.php?id=" . $row["id"] . "\">" . $row["name"] . "</a>&nbsp;" . $row["level"];
		}
		$sql = "SELECT * FROM logs ORDER BY time DESC LIMIT 0,100";
		$ref = mysql_query($sql);
		$sidebaradmin .= "<br><br><h2>logs</h2>";
		while($row = mysql_fetch_assoc($ref))
		{
			
			 $sidebaradmin .= "<br>" . $row["user"] . "&nbsp; : &nbsp;" . $row["val"];
		}
		$content .= "</div><br /><br />";
		$sidebaradmin .= "</div>";
	}
	/*else if($_SESSION["role"] >=0)
	{
		$pagetype = "admin";
		$content = "<h2>Levels</h2><br>";
		$sql = "SELECT * FROM levels ORDER BY name";
		$ref = mysql_query($sql);
		while($row = mysql_fetch_assoc($ref))
		{
			$content = $content . "<br>" . $row["name"] . "&nbsp; : &nbsp; <a href = \"editlevels.php?l=" . $row["name"] ."\">" . $row["title"] . "</a>";
		}
		$sql = "SELECT * FROM users WHERE role != 10 ORDER BY level DESC,passtime ASC";
		$ref = mysql_query($sql);
		$sidebaradmin = "<h2>leaderboard</h2>";
		while($row = mysql_fetch_assoc($ref))
		{
			
			 $sidebaradmin = $sidebaradmin . "<br><a href = \"edituser.php?id=" . $row["id"] . "\">" . $row["name"] . "</a>&nbsp;" . $row["level"];
		}
		$sql = "SELECT * FROM logs ORDER BY time DESC LIMIT 0,100";
		$ref = mysql_query($sql);
		$sidebaradmin = $sidebaradmin . "<br><br><h2>logs</h2>";
		while($row = mysql_fetch_assoc($ref))
		{
			
			 $sidebaradmin = $sidebaradmin . "<br>" . $row["user"] . "&nbsp; : &nbsp;" . $row["val"];
		}
		
		$_SESSION["pagetype"] = $pagetype;
		$_SESSION["sidebaradmin"] = $sidebaradmin;
	}*/
	else if($_SESSION["role"] >=0)
	{
		$id = (int)mysql_real_escape_string($_SESSION["level"]);

		$sql = "SELECT * FROM levels WHERE id = " . ($id + 1) . "" ;
		$ref = mysql_query($sql);
		$row = mysql_fetch_assoc($ref);
		$content = $row['contents'] ;
		
		if(!($content))	
		{
			$sql = "SELECT * FROM levels WHERE id = " . $id . "" ;
			$ref = mysql_query($sql);
			$row = mysql_fetch_assoc($ref);
			
			if($row['final_round'] == 0)
			{
				$content = "Waiting for the remaining levels to be uploaded";
			}
			else
			{
				$content = "Congratulations!!!";
			}			
		}
		else
		{
			$content = $content . "<br><div id = \"answerbox\"><form action = \"answer.php\" name = \"answer\">Answer: <input type = \"text\" name = \"answer\"><input type = \"submit\" value = \"Check\"></form>";
			$cookie = $row['cookie'];
			$javascript = $row['javascript'];
			$title = $row['title'];
			
			setcookie($id + 1, $cookie);
		}
			
		$pagetype = "player";

		$_SESSION["pagetype"] = $pagetype;
		//$_SESSION["sidebaradmin"] = $sidebaradmin;
	}	
	else
	{
		$content = "You have been banned from playing. Please contact admin for details";
	}
	require_once("theme/theme.php");
?>
	

