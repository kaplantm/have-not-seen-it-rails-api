class Movie < ApplicationRecord
    scope :title, -> (title) { where title: title }
    has_many :summaries
    has_many :movie_choice
end
