class MovieSerializer
    include FastJsonapi::ObjectSerializer
    attributes :title, :releaseDate, :posterUrl
    has_many :summaries
  end
  