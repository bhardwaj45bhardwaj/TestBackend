class MoviesController < ApplicationController

	def index
		@movies = Movie.get_movie_listing(params[:actor_name])
		if params[:actor_name].present?
			@movies.where
		else

		end
		@movies 
	end
end