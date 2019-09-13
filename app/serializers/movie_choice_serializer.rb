class MovieChoiceSerializer
  include FastJsonapi::ObjectSerializer
  attributes :movie, :summary

  # When using belongs to here instead of using attributes, wil not include info from movie/summary
  # belongs_to :movie
  # belongs_to :summary

end
