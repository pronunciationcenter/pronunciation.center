/*
 * IE10 viewport hack for Surface/desktop Windows 8 bug
 * Copyright 2014-2015 Twitter, Inc.
 * Licensed under MIT (https://github.com/twbs/bootstrap/blob/master/LICENSE)
 */
(function(){if(navigator.userAgent.match(/IEMobile\/10\.0/)){var msViewportStyle=document.createElement("style");msViewportStyle.appendChild(document.createTextNode("@-ms-viewport{width:auto!important}"));document.querySelector("head").appendChild(msViewportStyle);}})();$(document).ready(function(){$('[data-toggle="offcanvas"]').click(function(){$(".row-offcanvas").toggleClass("active");});});function share(socialMediaUrl){window.open(socialMediaUrl,"","menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=600,width=600");}