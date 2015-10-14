
//On Click Search Mashape API for Movies
$(document).ready(function(){
	$('#movie_search').click( function(event){

		//disable button and prevent default rails rendering
		$(this).prop("disabled", true);
		$('#movie_title').addClass("loading-indicator");
		$('#movie_title').prop("disabled", true);


		event.preventDefault();

		//search for movie title via Mashape API
		searchVar = $('#movie_title').val();

		$.ajax({
			type: 'GET',
			url: '	https://metacritic-2.p.mashape.com/search/movie',
			headers: {'X-Mashape-Key': '8IzACU8iENmshnZ4UBorbrdca4oZp1PoGdQjsnT6oaSyZRE4x7', 'Accept': 'application/json'},
			data: {title: searchVar},
			success: function (data) {
				saveMovies(data.results, searchVar);
			},

			error: function (error) { 
				errorHandling(error);
			}
		});
	});


	//Save to Movies in Application and Get Thumbnails to display for each Movie
	function saveMovies(data, searchVar) {
		$.ajax({
			type: 'POST',
			url: '/api/movie_lists',
			data: {movies: data, query: searchVar},
			error: function (error) { 
				errorHandling(error);
			}
		});
	};

	//Repetitive error handling in case it exists out of initial API Call or subsequent Rails API Calls
	function errorHandling(error) {
		console.log(error);
		alert(errorHandling.statusText); 
		$(this).removeProp("disabled");
		$('#movie_title').removeProp("disabled");
		$('#movie_title').removeClass("loading-indicator");
	};
});