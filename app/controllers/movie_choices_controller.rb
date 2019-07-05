class MovieChoicesController < ApplicationController
  before_action :set_movie_choice, only: [:show, :update, :destroy]

  # GET /movie_choices
  def index 
    @movie_choices = MovieChoice.all.includes(:movie, :summary)

    # paginate
    @movie_choices = @movie_choices.page(params[:page]).per(params[:pageSize] || 10) if params[:page].present?

    # filter by movie id
    @movie_choices = @movie_choices.select{|c| c.movie_id == params[:movie_id].to_f} if params[:movie_id].present?

    # filter by summary id
    @movie_choices = @movie_choices.select{|c| c.summary_id == params[:summary_id].to_f} if params[:summary_id].present?

    # filter by movie title
    @movie_choices = @movie_choices.select{|c| c.movie.title == params[:movie_title]} if params[:movie_title].present?

    # filter by correctness
    @movie_choices = @movie_choices.select{|c| c.movie_id == c.summary.movie_id} if params[:correct].present? && !params[:incorrect].present?
    @movie_choices = @movie_choices.select{|c| c.movie_id != c.summary.movie_id} if params[:incorrect].present? && !params[:correct].present?


    # render json: @movie_choices.to_json
    # options = {}
    # options[:meta] = { total: 2 }
    # options[:include] = [:summary, :'summary.content']
    render json: serializer.new(@movie_choices)
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
    # Use callbacks to share common setup or constraints between actions.
    def set_movie_choice
      @movie_choice = MovieChoice.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def movie_choice_params
      params.require(:movie_choice).permit(:movie_id, :summary_id)
    end

    def serializer
      MovieChoiceSerializer
    end
end
