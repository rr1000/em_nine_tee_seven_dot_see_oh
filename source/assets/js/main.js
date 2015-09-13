$(document).ready(function(){
	var blItem = $('.big-list article');

	blItem.hover(function(){

		var blItemType = $(this).find('.type');
		var blItemDesc = $(this).find('.desc');

		blItemType.toggleClass('false-idols');
		blItemDesc.toggleClass('false-idols');

	});

});