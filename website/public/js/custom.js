 /*!
 * IE10 viewport hack for Surface/desktop Windows 8 bug
 * Copyright 2014-2015 Twitter, Inc.
 * Licensed under MIT (https://github.com/twbs/bootstrap/blob/master/LICENSE)
 */
// See the Getting Started docs for more information:
// http://getbootstrap.com/getting-started/#support-ie10-width
(function () {
  'use strict';

  if (navigator.userAgent.match(/IEMobile\/10\.0/)) {
    var msViewportStyle = document.createElement('style')
    msViewportStyle.appendChild(
      document.createTextNode(
        '@-ms-viewport{width:auto!important}'
      )
    )
    document.querySelector('head').appendChild(msViewportStyle)
  }

})();


//offcanvas.js
$(document).ready(function () {
  $('[data-toggle="offcanvas"]').click(function () {
    $('.row-offcanvas').toggleClass('active')
  });
});


/*Social Buttons*/

function share(socialMediaUrl){	
	window.open(socialMediaUrl,'', 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=600,width=600');
}


/*********************************************************************
 * Text to speech synthesis 
 ********************************************************************/

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
	if(phrase!==''){			
		if('speechSynthesis' in window) {
			speak(phrase);
		}else{
			$('#errors').html('I am sorry, your browser does not support speech synthesis.');
		}		
	}
});

function speak(phrase){

		var msg = new SpeechSynthesisUtterance(phrase);
		msg.lang = 'en-US';

		msg.onstart = function(event){
			$('#playpause').attr('class', 'btn btn-default glyphicon glyphicon-stop');
		}

		msg.onend = function(event){
			$('#playpause').attr('class', 'btn btn-default glyphicon glyphicon-play');
		}

		msg.onerror = function(event){
			$('#errors').html('****I am sorry, it was not possible speak your text, please try again.****');
		}
			
		speechSynthesis.speak(msg);
}	