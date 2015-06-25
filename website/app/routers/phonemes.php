<?php
$app->get('/phonemes', function () use($app) {
    
    // cache
    $app->etag('phonemes' + time() >> 12); // the id is the ame for 1 hour with >>12
    $app->expires('+1 hour');
    
    $vowels = $app->db->query("
				SELECT pe.id, p.letter, p.type, pe.examples
				FROM phonemes p
					INNER JOIN phoneme_examples pe 
					ON pe.id_phoneme = p.id 
				WHERE p.type = 'V' 
					AND pe.id_language = 57
		")
        ->fetchAll(PDO::FETCH_ASSOC);
    
    $consonantes = $app->db->query("
				SELECT pe.id, p.letter, p.type, pe.examples
				FROM phonemes p
					INNER JOIN phoneme_examples pe 
					ON pe.id_phoneme = p.id 
				WHERE p.type = 'C' 
					AND pe.id_language = 57
		")
        ->fetchAll(PDO::FETCH_ASSOC);
    
    $app->render('phonemes.twig', [
        'vowels' => $vowels,
        'consonantes' => $consonantes
    ]);
})
    ->name('phonemes');

$app->get('/phonemes/:id', function ($id) use($app) {
    
    // cache
    $app->etag('phonemes' + time() >> 12 + $id); // the id is the ame for 1 hour with >>12
    $app->expires('+1 hour');
    
    $phonemeExample = $app->db->prepare("
				SELECT pe.id, p.letter, p.type, pe.examples, pe.description, pe.picture 
				FROM phonemes p
					INNER JOIN phoneme_examples pe 
					ON pe.id_phoneme = p.id 
				WHERE pe.id = :id
		");
    $phonemeExample->execute([
        'id' => $id
    ]);
    $phonemeExample = $phonemeExample->fetch(PDO::FETCH_ASSOC);
    
    if (!$phonemeExample){
        $app->notFound();
    }else{
        $tips = $app->db->prepare("
				SELECT t.id, t.tittle, t.link, t.description
				FROM tips t
				WHERE t.id_phoneme_example = :id
		");
        $tips->execute([
            'id' => $id
        ]);
        $tips = $tips->fetchAll();
        
        $app->render('phonemes.twig', array(
            'id' => $id,
            'phonemeExample' => $phonemeExample,
            'tips' => $tips
        ));
    }
});