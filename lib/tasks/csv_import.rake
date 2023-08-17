require 'csv'

namespace :csv do
  desc "Import movies and reviews"
  task import: :environment do
    CSV.foreach(Rails.root.join('public', 'movies.csv'), headers: true) do |row|
      Movie.create!(name: row['Movie'], 
        description: row['Description'],
        release_date: row['Year'],
        director_name: row['Director'],
        actor_name: row['Actor'],
        filming_location: row['Filming location'],
        country: row['Country'])
    end

    CSV.foreach(Rails.root.join('public', 'reviews.csv'), headers: true) do |row|
      movie = Movie.find_by(name: row['Movie'])
      Review.create!(stars: row['Stars'], 
        comment: row['Review'], 
        movie_id: movie.id, 
        user: row['User'])
    end
  end
end


