class Movie < ApplicationRecord
	has_many :reviews, dependent: :destroy

	def self.get_movie_listing(actor_name)
		if actor_name.preset? 
		Movie.find_by_sql(["select m.name, 
		m.description,
		m.release_date, 
		m.actor_name, 
		avg(r.stars) as average_rating 
		from movies m join reviews r on m.id = r.movie_id 
		group by m.id Order By average_rating Desc "])
	end

end
