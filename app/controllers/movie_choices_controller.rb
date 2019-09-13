class MovieChoicesController < ApiController
  # skip_before_action :verify_authenticity_token #use for postman testing
  before_action :set_movie_choice, only: [:show, :update, :destroy]
  # TODO add param to pick sort order (e.g. by date added)


  # GET /movie_choices
  def index
    # @movie_choices = MovieChoice.joins(:movie, :summary)
    @movie_choices = MovieChoice.includes(:movie)
    filter()
    render json: serializer.new(@movie_choices)
    # render json: @movie_choices
  end

  # GET /movie_choices/1
  def show
    render json: @movie_choice
  end

  # POST /movie_choices
  def create
    @movie_choice = MovieChoice.new(movie_choice_params)

    if @movie_choice.save
      render json: @movie_choice, status: :created, location: @movie_choice
    else
      render json: @movie_choice.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /movie_choices/1
  def update
    if @movie_choice.update(movie_choice_params)
      render json: @movie_choice
    else
      render json: @movie_choice.errors, status: :unprocessable_entity
    end
  end

  # DELETE /movie_choices/1
  def destroy
    @movie_choice.destroy
  end

  private
    def filter()
      # paginate
      @movie_choices = @movie_choices.page(params[:page] || 1).per(params[:pageSize] || 12)

      # filter by movie id
      @movie_choices = @movie_choices.where(movie_id: params[:movie_id].to_f) if params[:movie_id].present?
      # @movie_choices = @movie_choices.select{|c| c.movie_id == params[:movie_id].to_f} if params[:movie_id].present?

      # filter by movies ids
      @movie_choices = @movie_choices.where(movie_id: JSON.parse(params[:movie_ids])) if params[:movie_ids].present?

      # filter by summary id
      @movie_choices = @movie_choices.where(summary_id: params[:summary_ids].to_f) if params[:summary_id].present?

      # filter by summary ids
      @movie_choices = @movie_choices.where(summary_id: JSON.parse(params[:summary_ids])) if params[:summary_ids].present?

      # filter by movie title
      @movie_choices = @movie_choices.where('movies.title = ?', params[:movie_title]) if params[:movie_title].present?

      # filter by movie year
      @movie_choices = @movie_choices.where('movies.releaseYear = ?', params[:releaseYear].to_f) if params[:releaseYear].present?
      @movie_choices = @movie_choices.where('movies.minReleaseYear = ?', params[:minReleaseYear].to_f) if params[:minReleaseYear].present?
      @movie_choices = @movie_choices.where('movies.maxReleaseYear = ?', params[:maxReleaseYear].to_f) if params[:maxReleaseYear].present?

      # filter by correctness
      @movie_choices = @movie_choices.where('movies.id = summaries.movie_id')  if params[:correct].present? && !params[:incorrect].present?
      @movie_choices = @movie_choices.where('movies.id != summaries.movie_id')  if params[:incorrect].present? && !params[:correct].present? 
    
      # order by 
      # need error handling here for invalid order by value
      @movie_choices = @movie_choices.order(params[:order] || 'movie_choices.id ASC')
    end 

    # Use callbacks to share common setup or constraints between actions.
    def set_movie_choice
      @movie_choice = MovieChoice.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def movie_choice_params
      params.permit(:movie_id, :summary_id)
    end

    def serializer
      MovieChoiceSerializer
    end
end
