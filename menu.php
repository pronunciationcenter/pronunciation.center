<?php
require_once ('./config.php');
class menu
{
	function getMenu($active){
		$config = new Config();
		echo "<div id='logo' class='text-center'>";
		echo "<a href='$config->wwwroot'><img src='./img/images/logo2.png'></a>";
		echo "</div>";		
		echo "<nav>";
		echo "<ul class='nav nav-tabs'>";
		echo "<li><a href='$config->wwwroot'>Pronunciation.Center</a></li>";
		
		if ($active=="home")
			echo "<li class='active'><a href='$config->wwwroot'>Home</a></li>";
		else 
			echo "<li><a href='$config->wwwroot'>Home</a></li>";

		if ($active=="ipa")
			echo "<li class='active'><a href='ipa.php'>IPA</a></li>";
		else 
			echo "<li><a href='ipa.php'>IPA</a></li>";

		if ($active=="tips")
			echo "<li class='active'><a href='tips.php'>Pronunciation Tips</a></li>";
		else 
			echo "<li><a href='tips.php'>Pronunciation Tips</a></li>";

		if ($active=="suggestions")
			echo "<li class='active'><a href='suggestions.php'>Suggested Links</a></li>";
		else 
			echo "<li><a href='suggestions.php'>Suggested Links</a></li>";

		if ($active=="settings")
			echo "<li class='active'><a href='settings.php'>Settings</a></li>";
		else 
			echo "<li><a href='settings.php'>Settings</a></li>";
		echo "</ul>";
		echo "</nav>";
	}
}
?>