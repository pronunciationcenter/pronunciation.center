<?php
	$app->get ( '/ipa', function () use($app) {
		
		$vowels = $app->db->query("
				SELECT ie.id, i.letter, i.type, ie.examples
				FROM ipa i  
					INNER JOIN ipa_examples ie 
					ON ie.id_ipa = i.id 
				WHERE i.type = 'V' 
					AND ie.id_language = 57
		")->fetchAll(PDO::FETCH_ASSOC);
		
		$consonantes = $app->db->query("
				SELECT ie.id, i.letter, i.type, ie.examples
				FROM ipa i
					INNER JOIN ipa_examples ie
					ON ie.id_ipa = i.id
				WHERE i.type = 'C'
					AND ie.id_language = 57
		")->fetchAll(PDO::FETCH_ASSOC);
		
		$app->render ( 'ipa.twig' ,[
				'vowels' => $vowels,
				'consonantes' => $consonantes,
		]);
			
	} )->name ( 'ipa' );
	
	$app->get ( '/ipa/:id', function ($id) use($app) {
		
		$ipaExample = $app->db->prepare("
				SELECT ie.id, i.letter, i.type, ie.examples, ie.description, ie.picture 
				FROM ipa i  
					INNER JOIN ipa_examples ie 
					ON ie.id_ipa = i.id 
				WHERE ie.id = :id
		");
		$ipaExample->execute(['id'=>$id]);
		$ipaExample = $ipaExample->fetch(PDO::FETCH_ASSOC);
		
		
		$tips = $app->db->prepare("
				SELECT t.id, t.tittle, t.link, t.description 
				FROM tips t 
				WHERE t.id_ipa_example = :id
		");
		$tips->execute(['id'=>$id]);
		$tips = $tips->fetchAll();
		
	
		$app->render ( 'ipa.twig', array (
				'id' => $id,
				'ipaExample' => $ipaExample,
				'tips' => $tips
		) );
	} );
?>