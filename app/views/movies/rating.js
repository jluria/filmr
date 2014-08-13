//https://www.youtube.com/watch?v=4fSJTjATUfo
var set_stars = function(form_id, stars) {

	for(i=0; i<=10; i++){
			if(i <= stars){
				$('#' + movie_id + '_' + i).addClass('on');
			} else {
				$('#' + movie_id + '_' + i).removeClass('on');
			}
		}
});
$(function() {
	$('.rating_star').click(function() {
		var star = $(this);
		var form_id = $(this).attr('data-form-id');
		var stars = $(this).attr('data-stars');

		

		$.ajax({
			type: "post",
			url: $('#' +form_id).attr('action'),
			data: $('#' + form_id).serialize()
		});
	});
});

$('.star_rating_form').each(function() {
	var form_id = $(this).attr('id');
	var stars = $('#' + form_id + '_stars').val();
	set_stars(form_id, stars);
})