
//On Click Search Mashape API for Movies

$('#movie_search').click( function(event){

	event.preventDefault();

	movieTitle = $('#movie_title').val();

	$.ajax({
		type: 'GET',
		url: '	https://metacritic-2.p.mashape.com/search/movie',
		headers: {'X-Mashape-Key': '8IzACU8iENmshnZ4UBorbrdca4oZp1PoGdQjsnT6oaSyZRE4x7', 'Accept': 'application/json'},
		data: {title: movieTitle},
		success: function (data) {
			console.log(data);
			saveMovies(data.results);
		},

		error: function (msg) { console.log(msg);}
	});
});


//Save to Movies in Application and Get Thumbnails to display for each Movie
function saveMovies(data) {
	$.ajax({
		type: 'POST',
		url: '/api/movies',
		data: {movies: data},
		error: function (msg) { console.log(msg); }
	})
};