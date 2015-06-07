<?php
require_once __DIR__.'/../dao/connection.php';
require_once ('menu.php');
?>

<!doctype html>
<html lang="en">
<?php include "header.php";?>
<body>
	<?php include_once("analyticstracking.php") ?>
	<!-- Header -->
	<div id="header-wrapper" class="container">
		<?php 
			$menu = new menu();
			$menu->getMenu("ipa");
		?>
	</div>
	
	<!-- Main -->
	<div class="wrapper container">
		<main class="">
			<?php  if (isset($id)){ ?> <!--If id is setted-->			
			<article>
				<header>
					<?php
					echo "<h1>";
					echo "<a href='ipa'>IPA</a> > ";
					$connection = new connection();
					$mysqli = $connection->getConnection();

					$query = "SELECT ie.id, i.letter, i.type, ie.examples, ie.description, ie.picture FROM ipa i  INNER JOIN ipa_examples ie ON ie.id_ipa = i.id WHERE ie.id = ?"; 

					if ($stmt = $mysqli->prepare($query)) {

						/* bind parameters for markers */
						$stmt->bind_param("i", $id);

						/* execute query */
						$stmt->execute();

						/* bind result variables */
						$stmt->bind_result($id, $letter, $type, $examples, $description, $picture);

						/* fetch values */
						if ($stmt->fetch()) {
							echo "<a href='ipa/$id'>[ $letter ]</a>";
							echo "</h1>";
							echo "<div class='container'>";
							echo "<h2>Examples: $examples</h2>";
							if($picture){
								echo "<p><img src='$picture' style='float: left;' class='thumbnail' height='128' width='128'>$description</p>";
							}else{
								echo "<p>$description</p>";	
							}
							echo "</div>";
						}else{
							echo "</h1>";
						}

						$stmt->close();	

						$query = "SELECT t.id, t.tittle, t.link, t.description FROM tips t WHERE t.id_ipa_example = ?";

						if ($stmt = $mysqli->prepare($query)) {

							/* bind parameters for markers */
							$stmt->bind_param("i", $id);

							/* execute query */
							$stmt->execute();

							/* bind result variables */
							$stmt->bind_result($id, $tittle, $link, $description);

							echo "<div class='container'>";
							echo "<section id='tips'>";
							/* fetch values */
							while ($stmt->fetch()) {
								echo "<iframe width='560' height='315' src='$link' frameborder='0' allowfullscreen>";
								echo "</iframe> ";
							}
							echo "</section>";
							echo "</div>";

							/* close statement */
							$stmt->close();
						}

					}else{
						echo "</h1>";
					}

					/* close connection */
					$mysqli->close();
					?>

				</header>
			</article>
			<?php } else{ ?> <!--if  id is not setted-->
			<article>
				<header>
					<h1>IPA</h1>
					<p>IPA stands for International Phonetic Alphabet.
					</p>
				</header>
				<figure id="imgExample"></figure>
				<p><a href="http://en.wikipedia.org/wiki/International_Phonetic_Alphabet">The International Phonetic Alphabet</a> is an alphabetic system of phonetic notation based primarily on the Latin alphabet. It was devised by the International Phonetic Association as a standardized representation of the sounds of oral language. The IPA is used by lexicographers, foreign language students and teachers, linguists, speech-language pathologists, singers, actors, constructed language creators, and translators.
				</p>
				<div class="col-xs-6">
					<table id="voewls" class="table table-striped table-hover table-bordered table-condensed table-responsive">
						<tr>
							<td>Phoneme</td>
							<td>Examples</td>
						</tr>
						<?php
						$connection = new connection();
						$mysqli = $connection->getConnection();

						$query = "SELECT ie.id, i.letter, i.type, ie.examples FROM ipa i  INNER JOIN ipa_examples ie ON ie.id_ipa = i.id WHERE i.type = 'V' AND ie.id_language = 57"; 

						if ($stmt = $mysqli->prepare($query)) {

							/* bind parameters for markers */
    					//$stmt->bind_param("s", $city);

							/* execute query */
							$stmt->execute();

							/* bind result variables */
							$stmt->bind_result($id, $letter, $type, $examples);

							/* fetch values */
							while ($stmt->fetch()) {
								echo "<tr>"; 
								echo "<td><a href='ipa/$id'>[ $letter ]</a></td> "; 
								echo "<td><a href='ipa/$id'>$examples</a></td>";
								echo "</tr>";
							}
						}
						?> 

					</table>
				</div>
				<div class="col-xs-6">
					<table id="consonants" class="table table-striped table-hover table-bordered table-condensed table-responsive">
						<tr>
							<td>Phoneme</td>
							<td>Examples</td>
						</tr>
						<?php

						$query = "SELECT ie.id, i.letter, i.type, ie.examples FROM ipa i  INNER JOIN ipa_examples ie ON ie.id_ipa = i.id WHERE i.type = 'C' AND ie.id_language = 57"; 

						if ($stmt = $mysqli->prepare($query)) {

							/* bind parameters for markers */
    					//$stmt->bind_param("s", $city);

							/* execute query */
							$stmt->execute();

							/* bind result variables */
							$stmt->bind_result($id, $letter, $type, $examples);

							/* fetch values */
							while ($stmt->fetch()) {
								echo "<tr>";
								echo "<td><a href='ipa/$id'>[ $letter ]</a></td> "; 
								echo "<td><a href='ipa/$id'>$examples</a></td>";
								echo "</tr>";
							}

							/* close statement */
							$stmt->close();
						}

						/* close connection */
						$mysqli->close();
						?>
					</table>
				</div>
			</article>
			<?php } ?> <!--if  id is not setted end-->
		</main>
	</div>
	<?php include "footer.php";?>
</body>
</html>