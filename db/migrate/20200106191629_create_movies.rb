class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :year
      t.string :rating
      t.string :description
      t.integer :genre_id, null: false

      t.timestamps
    end
  end
end
