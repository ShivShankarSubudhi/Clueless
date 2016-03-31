<html>
<head>
	<title>Samavesh-Treasure Hunt</title>
	<link rel="icon" href="../tit.png" type="image/x-icon">
	<link href = "theme/clueless/style.css" media = "all" rel = "stylesheet" type = "text/css">
	<link href = "http://fonts.googleapis.com/css?family=Aldrich" rel = "stylesheet" type = "text/css">
	<link href='http://fonts.googleapis.com/css?family=Droid+Sans' rel='stylesheet' type='text/css'>
</head>
<body onload="javascript:positionContent()">
	<div id = "watermarkleft"></div>
	<div id = "watermarkright"></div>
	<?php if($_SESSION["valid_user"]) :?>
	<div id = "welcome">
		Whaddap, <?php echo $_SESSION["valid_user"]; ?>!
	</div>		
	<?php endif; ?>	
	<div id = "header">
		<div id = "logo">
			<img src = "theme/clueless/clueless_s.png" height = "69px" width = "495px">
		</div>
	</div>
	<div>
	<br>
		<table>
			<tr>
				<td style="vertical-align: top;" id="td1">
				<!-- First column starts -->
					<ul id = "navbar">
						<li><a href = "index.php">Home</a></li>
						<li><a href = "leaderboard.php">Leaderboard</a></li>
						<li><a href = "rules.php">Rules</a></li>
					
						<?php if($_SESSION["valid_user"]) :?>
						<li><a href = "logout.php">Logout</a></li>
						<?php else: ?>
						<li><a href = "register.php">Register</a></li>
						<?php endif; ?>
						<?php if($_SESSION["role"] >= 6) :?>
						<li><a href = "addlevels.php">Add levels</a></li>
						<?php endif; ?>
					</ul>
				<!-- First column ends -->
				</td>
				<td style="vertical-align: top;" id="td2">
				<!-- Second column starts -->
					<div>
					<?php print $content; ?>
					</div>
				<!-- Second column ends -->
				</td>
				<td style="vertical-align: top;" id="td3">
				<!-- Third column start -->
				<?php if($_SESSION["role"] >= 6) :?>
					<div id = "sidebaradmin">
					<?php if($_SESSION["sidebaradmin"]) print $_SESSION["sidebaradmin"]; ?>
					</div>
				<?php endif; ?>
				<!-- Third column ends -->
				</td>
			</tr>
		</table>			
	</div>
	<div id="footer" style="position: relative !important;">
			<p>&copy;Copyright Protected By Samavesh 2013 </p><!-- Do not remove -->
				<p>Designed by Shiv Shankar Subudhi</p>
	</div>
<script type="text/javascript">
	function positionContent() {
		var w = 0;
		var h = 0;
		//IE
		if(!window.innerWidth)
		{
			//strict mode
			if(!(document.documentElement.clientWidth == 0))
			{
				w = document.documentElement.clientWidth;
				h = document.documentElement.clientHeight;
			}
			//quirks mode
			else
			{
				w = document.body.clientWidth;
				h = document.body.clientHeight;
			}
		}
		//w3c
		else
		{
			w = window.innerWidth;
			h = window.innerHeight;
		}
		
		document.getElementById('td1').style.width = (w/4) + "px";
		document.getElementById('td2').style.width = (w/2) + "px";
		document.getElementById('td3').style.width = (w/4) + "px";
	}
</script>
<?php 
if(isset($javascript))
{
	print '<script type="text/javascript">';
	print "$javascript";
	print '</script>';
}
?>
</html>
</body>
