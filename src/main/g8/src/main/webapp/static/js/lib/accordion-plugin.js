/***********************************************************************************************************************
DOCUMENT: includes/javascript.js
DEVELOPED BY: Ryan Stemkoski
COMPANY: Zipline Interactive
EMAIL: ryan@gozipline.com
PHONE: 509-321-2849
DATE: 3/26/2009
UPDATED: 3/25/2010
DESCRIPTION: This is the JavaScript required to create the accordion style menu.  Requires jQuery library
NOTE: Because of a bug in jQuery with IE8 we had to add an IE stylesheet hack to get the system to work in all browsers. I hate hacks but had no choice :(.
************************************************************************************************************************/
$(document).ready(function() {
	 
	// ACCORDION BUTTON ACTION (ON CLICK DO THE FOLLOWING)
	$('.accordionButton').click(function() {

		//REMOVE THE ON CLASS FROM ALL BUTTONS
		$('.accordionButton').removeClass('on');
		  
		// CLOSE ALL SLIDES
	 	$('.accordionContent').slideUp('fast');
   
		//IF THE NEXT SLIDE WASN'T OPEN THEN OPEN IT
		if($(this).next().is(':hidden') == true) {
			
			$(this).addClass('on');
			
			$(this).next().slideDown('fast');
		 }
	 });
	
	// CLOSE ALL ACCORDION CONTENT SECTIONS
	$('.accordionContent').hide();
});
