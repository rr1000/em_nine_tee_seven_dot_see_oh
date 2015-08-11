$(document).ready(function(){

	var listItem = $('ul.work li');

	listItem.hover(function(){

		var itemType = $(this).find('.type');
		var itemAbout = $(this).find('.about');

		itemType.fadeToggle(250);
		itemAbout.toggleClass('false-idols');

	});

});