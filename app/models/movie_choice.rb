
class MovieChoiceValidator < ActiveModel::Validator
  def validate(record)
    # prevents user from adding the correct answer as a choice
    @summary = Summary.select("id","movie_id").all()
    @summary = @summary.where(id: record.summary_id)
    @summary = @summary.first()

    if !@summary
      record.errors[:error] << "Failed to find summary with id "+record.summary_id.to_s
    elsif record.movie_id === @summary.movie_id
      record.errors[:error] << "Cannot add correct answer as a choice. To access correct answer, see the correctMovieTitle and correctMovieId meta properties on each movie_choice. Error on: summary_id "+record.summary_id.to_s+" movie_id "+record.movie_id.to_s+" id "+record.id.to_s
    end
  end
end

class MovieChoice < ApplicationRecord
  scope :title, -> (title) { where title: title }
  validates :'movie_id', :presence => true
  validates :'summary_id', :presence => true

  validates_with MovieChoiceValidator

  belongs_to :movie
  belongs_to :summary
end
