/*********************************************************************
 * IE10 viewport hack for Surface/desktop Windows 8 bug 
 ********************************************************************/
(function () {'use strict';
  if (navigator.userAgent.match(/IEMobile\/10\.0/)) {var msViewportStyle = document.createElement('style')
    msViewportStyle.appendChild(document.createTextNode('@-ms-viewport{width:auto!important}'))
    document.querySelector('head').appendChild(msViewportStyle)}})();

/*********************************************************************
 * Offcanvas 
 ********************************************************************/
$(document).ready(function () {
  $('[data-toggle="offcanvas"]').click(function () {
    $('.row-offcanvas').toggleClass('active')
  });
});

/*********************************************************************
 * Social Buttons 
 ********************************************************************/
function share(socialMediaUrl){	
	window.open(socialMediaUrl,'', 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=600,width=600');
}

/*********************************************************************
 * Text to speech synthesis 
 ********************************************************************/
var speed = 1.0;

$('#rate').on('input',function(event){
	event.preventDefault();
	$('#rateOutput').val($(this).val()+'x');

})

$('#speak').click(function(event){
	event.preventDefault();
	$('#pronounceText').submit();
});

$('#stop').click(function(event){
	event.preventDefault();
	speechSynthesis.cancel();		
});


$('#pronounceText').submit(function (event){
	event.preventDefault();
	var text =$('#text').val();
	speed = parseFloat($('#rate').val());
	if(text.trim()!=='' && speakCheckCompatibility()){
		var phrases = text.replace(/\!/g,'.').replace(/\?/g,'.').split('.');
		phrases.forEach(speakText);
	}		
});


$('#playArticle').click(function (event){
	event.preventDefault();
	var text = $('#articleToSpeak').text();
	if(speakCheckCompatibility()){
		var phrases = text.replace(/\!/g,'.').replace(/\?/g,'.').split('.');
		phrases.forEach(speakText);
	}
});

$('#stopArticle').click(function (event){
	event.preventDefault();
	speechSynthesis.cancel();
});

function speakText(phrase){
		if(phrase.trim()==="") return;			

		var msg = new SpeechSynthesisUtterance(phrase);
		msg.lang = 'en-US';
		msg.rate = speed;

		msg.onerror = function(event){
			$('#errors').html('****I am sorry, it was not possible speak your text, please try again.****');
		}
		speechSynthesis.speak(msg);
}


$('#playpause').click(function(e) {
	event.preventDefault();
	if(speechSynthesis.speaking){
		speechSynthesis.cancel();
	}else{
		$('#pronounce').submit();
	}
});

$('#pronounce').submit(function (event){
	event.preventDefault();
	var phrase = $('#phrase').val();
	if(phrase.trim()!=='' && speakCheckCompatibility()){
		var phrases = phrase.replace(/\!/g,'.').replace(/\?/g,'.').split('.');
		phrases.forEach(speak);
	}
});

function speak(phrase){
		if(phrase.trim()==="") return;

		var msg = new SpeechSynthesisUtterance(phrase);
		msg.lang = 'en-US';

		msg.onstart = function(event){
			$('#playpause')
				.attr('class', 'btn btn-default glyphicon glyphicon-stop');
		}

		msg.onend = function(event){
			$('#playpause')
				.attr('class', 'btn btn-default glyphicon glyphicon-play');
		}

		msg.onerror = function(event){
			$('#errors')
				.html('**** I am sorry, it was not possible speak your text, please try again. ****');
		}
		speechSynthesis.speak(msg);
}

function speakCheckCompatibility(){
	if('speechSynthesis' in window) {
		return true;
	}else{
		$('#errors')
			.html('*** I am sorry, your browser does not support speech synthesis. ***');
		return false;
	}
}