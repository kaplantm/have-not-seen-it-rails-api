class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :releaseYear
      t.string :posterUrl

      t.timestamps
    end
  end
end
