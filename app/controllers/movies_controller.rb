class MoviesController < ApplicationController

	def index
		@movies = Movie.get_movie_listing(params[:actor_name])
	end
end