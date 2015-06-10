<?php
	require_once __DIR__.'/../config/config.php';
	$config = new Config();
	echo "<!-- Footer -->";
	echo "<div id='footer-wrapper' class='container'>";
	echo "<footer>";
	echo "<nav>";
	echo "<ul class='nav nav-pills'>";
	echo "<li><a href='$config->wwwroot'>Home</a></li>";
	echo "<li><a href='ipa'>IPA</a></li>";
	echo "<li><a href='tips'>Pronunciation Tips</a></li>";
	echo "<li><a href='suggestions'>Suggested Links</a></li>";
	echo "<li><a href='settings'>Settings</a></li>";
	echo "</ul>";
	echo "</nav>";
	echo "<a class='btn' href='https://www.facebook.com/pronunciation.center' > <img src='public/images/icons/facebook.png'>	</a>";
	echo "<a class='btn' href='https://twitter.com/pronuncenter' > <img src='public/images/icons/twitter.png'>	</a>";
	echo "<a class='btn' href='mailto:pronunciation.center@gmail.com'> <img src='public/images/icons/gmail.png'></a>";
	echo "</footer>";
	echo "</div>";
?>
