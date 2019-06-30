class Summary < ApplicationRecord
  # to do: what does this scope line do?
  scope :movie_id, -> (movie_id) { where movie_id: movie_id }
  belongs_to :movie
end
