<?php
	require_once ('menu.php');	
?>
<!doctype html>
<html lang="en">
	<?php include "header.php";
	?>
<body>
	<?php include_once("analyticstracking.php") ?>
	<!-- Header -->
	<div id="header-wrapper" class="container">
		<?php 
			$menu = new menu();
			$menu->getMenu("home");
		?>
	</div>
	
	<!-- Main -->
	<div class="wrapper container">
		<main class="">
			<article>
				<header>
					<h1>Welcome</h1>
					<p>Welcome to Pronunciation.Center!
					</p>
				</header>
				<figure id="imgExample"></figure>
				<p>The is your portal to learn English Pronunciation.					
				</p>
				<p>guages, and vice versa. For instance, the “th” sound in the words  “think” and “this” does not exist in Brazilian Portuguese. Furthermore, many letters from the alphabet are pronounced differently in Portuguese and English. For instance, in the beginning of words, “t” sounds different in Portuguese and English; in English this sound is plosive, and in  Portuguese it isn't. Those kind of differences makes many English learners mispronounce several words. Moreover, English spelling is not phonetic. In the words “Illinois” and “island” the “s” is not pronounced, as well as the “k” in the words  “know” and “knight”. It confuses people who their first language has a phonetic spelling.
				</p>
				<p>This website was made to help you in this journey of learning the English pronunci
				</p>
				<p>This website was made to help you in this journey of learning the English pronunciation.
				</p>
			</article>
			<section id="tips">
			</section>
		</main>
	</div>
	<?php include "footer.php";?>
</body>
</html>