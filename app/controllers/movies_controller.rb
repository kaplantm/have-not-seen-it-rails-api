class MoviesController < ApiController
  before_action :set_movie, only: [:show, :update, :destroy]

  # GET /movies
  def index
    @movies = Movie.select("id, title, posterUrl, releaseYear").all
    @movies = @movies.where(id: params[:movie_id]) if params[:movie_id].present?
    @movies = @movies.where(id: JSON.parse(params[:movie_ids])) if params[:movie_ids].present?
    @movies = @movies.title(params[:title]) if params[:title].present?
    @movies = @movies.select{|m| m.releaseYear == params[:releaseYear].to_f} if params[:releaseYear].present?
    @movies = @movies.select{|m| m.releaseYear >= params[:minReleaseYear].to_f} if params[:minReleaseYear].present?
    @movies = @movies.select{|m| m.releaseYear <= params[:maxReleaseYear].to_f} if params[:maxReleaseYear].present?
    @movies = @movies.page(params[:page]).per(params[:pageSize] || 10) if params[:page].present?
    render json: @movies.to_json
  end

  # GET /movies/1
  def show
    render json: @movie
  end

  # POST /movies
  def create
    @movie = Movie.new(movie_params)

    if @movie.save
      render json: @movie, status: :created, location: @movie
    else
      render json: @movie.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /movies/1
  def update
    if @movie.update(movie_params)
      render json: @movie
    else
      render json: @movie.errors, status: :unprocessable_entity
    end
  end

  # DELETE /movies/1
  def destroy
    @movie.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movie
      @movie = Movie.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def movie_params
      params.require(:movie).permit(:title, :releaseYear, :posterUrl)
    end
    
    def serializer
      MovieSerializer
    end
end
