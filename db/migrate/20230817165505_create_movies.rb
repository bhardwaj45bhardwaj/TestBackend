class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :name
      t.text :description
      t.string :release_date
      t.string :director_name
      t.string :actor_name
      t.text :filming_location
      t.string :country
      t.timestamps
    end
  end
end


