class MovieSerializer
    include FastJsonapi::ObjectSerializer
    attributes :title, :releaseYear, :posterUrl
    has_many :summaries
  end
  