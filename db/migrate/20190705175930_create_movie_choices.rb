class CreateMovieChoices < ActiveRecord::Migration[5.2]
  def change
    create_table :movie_choices do |t|
      t.references :movie, foreign_key: true
      t.references :summary, foreign_key: true

      t.timestamps
    end
  end
end
