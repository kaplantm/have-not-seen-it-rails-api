class SummarySerializer
  include FastJsonapi::ObjectSerializer
  attributes :content
  # belongs_to :movie

  meta do |summary, params|
    if(params[:include_choices] === true)
      {
        movie_id: summary.movie_id,
        # could add where difficultly here to filter choices
        movie_choices: summary.movie_choices.limit(params[:movie_choices_limit]),
      }
    else
      {
        movie_id: summary.movie_id
      }
    end
  end
end
