
//On Click Search Mashape API for Movies
$(document).ready(function(){
	$('#movie_search').click( function(event){

		event.preventDefault();

		searchVar = $('#movie_title').val();

		$.ajax({
			type: 'GET',
			url: '	https://metacritic-2.p.mashape.com/search/movie',
			headers: {'X-Mashape-Key': '8IzACU8iENmshnZ4UBorbrdca4oZp1PoGdQjsnT6oaSyZRE4x7', 'Accept': 'application/json'},
			data: {title: searchVar},
			success: function (data) {
				saveMovies(data.results, searchVar);
			},

			error: function (msg) { console.log(msg);}
		});
	});


	//Save to Movies in Application and Get Thumbnails to display for each Movie
	function saveMovies(data, searchVar) {
		$.ajax({
			type: 'POST',
			url: '/api/movie_lists',
			data: {movies: data, query: searchVar},
			error: function (msg) { console.log(msg); }
		})
	};
});