class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :title
      t.date :releaseDate
      t.string :posterUrl

      t.timestamps
    end
  end
end
