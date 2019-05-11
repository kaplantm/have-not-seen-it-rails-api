class Movie < ApplicationRecord
    scope :title, -> (title) { where title: title }
    has_many :summaries
end
