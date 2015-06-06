<?php
	require_once ('./menu.php');
?>
<!doctype html>
<html lang="en">
	<?php include "header.html";?>
<body>
	<?php include_once("analyticstracking.php") ?>
	<!-- Header -->
	<div id="header-wrapper" class="container">
		<?php 
			$menu = new menu();
			$menu->getMenu("settings");
		?>
	</div>
	
	<!-- Main -->
	<div class="wrapper container">
		<main class="">
			<article>
				<header>
					<h1>Settings</h1>
					<p>Page in construction.
					</p>
				</header>
				<figure id="imgExample"></figure>
				<p>Page in construction.
				</p>
			</article>
			<section id="tips">
			</section>
		</main>
	</div>
	<?php include "footer.php";?>
</body>
</html>