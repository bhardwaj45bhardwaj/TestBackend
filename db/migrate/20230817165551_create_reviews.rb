class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.references :movie, index: true, foreign_key: true
      t.string :user
      t.float :stars
      t.text :comment
      t.timestamps
    end
  end
end
