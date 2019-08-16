class MovieChoiceSerializer
  include FastJsonapi::ObjectSerializer
  # attributes :movie, :summary

  # When using belongs to here instead of using attributes, wil not include info from movie/summary
  # belongs_to :movie
  belongs_to :summary

  meta do |movie_choice|
    {
      correctMovieTitle: movie_choice.summary.movie.title,
      correctMovieId: movie_choice.summary.movie.id
    }
  end
end
