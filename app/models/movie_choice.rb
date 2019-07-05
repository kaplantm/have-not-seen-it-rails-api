class MovieChoice < ApplicationRecord
  belongs_to :movie
  belongs_to :summary
end
