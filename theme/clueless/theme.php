<html>
<head>
	<title>Samavesh-Treasure Hunt</title>
	<link rel="icon" href="../tit.png" type="image/x-icon">
	<link href = "theme/clueless/style.css" media = "all" rel = "stylesheet" type = "text/css">
	<link href = "http://fonts.googleapis.com/css?family=Aldrich" rel = "stylesheet" type = "text/css">
	<link href='http://fonts.googleapis.com/css?family=Droid+Sans' rel='stylesheet' type='text/css'>
</head>
<body>
	<div id = "watermarkleft"></div>
	<div id = "watermarkright"></div>
	<!--<?php if($_SESSION["valid_user"]) :?>
	<div id = "welcome">
		How you doin', <?php echo $_SESSION["valid_user"]; ?>?
	</div>		
	<?php endif; ?>	-->
	<div id = "header">
		<div id = "logo">
			<img src = "theme/clueless/clueless_s.png" height = "69px" width = "495px">
		</div>
	</div>
	<div class="colmask threecol">
		<div class="colmid">
			<div class="colleft">
				<div class="col1"> 
				<!-- Second column starts -->
					<!--<div id = "center_content<?php if($_SESSION["pagetype"]) print $_SESSION["pagetype"];?>">-->
					<?php print $content; ?>
					</div>
				<!-- Second column ends -->
				</div>
				<div class="col2">
				<!-- First column starts -->
					<!--<ul id = "navbar">
						<li><a href = "index.php">Home</a></li>
						<li><a href = "leaderboard.php">Leaderboard</a></li>
						<li><a href = "rules.php">Rules</a></li>
						<li><a href = "hall.php">Hall of Fame</a></li>
						<?php if($_SESSION["valid_user"]) :?>
						<li><a href = "logout.php">Logout</a></li>
						<?php else: ?>
						<li><a href = "register.php">Register</a></li>
						<?php endif; ?>
						<?php if($_SESSION["role"] >= 6) :?>
						<li><a href = "addlevels.php">Add levels</a></li>
						<?php endif; ?>
					</ul>-->
				<!-- First column ends -->
				</div>
				<div class="col3">
				<!-- Third column start -->
				<!--<?php if($_SESSION["role"] >= 6) :?>
					<div id = "sidebaradmin">
					<?php if($_SESSION["sidebaradmin"]) print $_SESSION["sidebaradmin"]; ?>
					</div>
				<?php endif; ?>-->
				<!-- Third column ends -->
				</div>
			</div>
		</div>
	</div>
	<div id="footer">
		<p>Copyright Protected By Samavesh 2013 </p><!-- Do not remove -->
				<p>Designed by Shiv Shankar Subudhi</p>
	</div>	
</body>
</html>
