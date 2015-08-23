$(document).ready(function(){

	var listItem = $('.index ul li');

	listItem.hover(function(){

		var itemType = $(this).find('.type');
		var itemAbout = $(this).find('.desc');

		itemAbout.toggleClass('false-idols');
		itemType.toggleClass('false-idols');

	});

});