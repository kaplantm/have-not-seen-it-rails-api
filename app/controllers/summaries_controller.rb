class SummariesController < ApiController
  before_action :set_summary, only: [:show, :update, :destroy]

  # GET /summaries
  def index
    minChoices = params[:minChoices] || 0

    
    @summaries = Summary.joins(:movie_choices)
    @summaries = @summaries.where("summary_id > ?", params[:minId])  if params[:minId].present?

    @summaries = @summaries.group('id').having("count(movie_choices.id) >= #{minChoices}")

    # # TODO: Should limit number
    @summaries = @summaries.movie_id(params[:movie_id]) if params[:movie_id].present?
    @summaries = @summaries.page(params[:page]).per(params[:pageSize] || 10) if params[:page].present?

    render json: serializer.new(@summaries)
    # render json: @summaries
  end

  # GET /summaries/1
  def show
    render json: @summary
  end

  # POST /summaries
  def create
    @summary = Summary.new(summary_params)

    if @summary.save
      render json: @summary, status: :created, location: @summary
    else
      render json: @summary.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /summaries/1
  def update
    if @summary.update(summary_params)
      render json: @summary
    else
      render json: @summary.errors, status: :unprocessable_entity
    end
  end

  # DELETE /summaries/1
  def destroy
    @summary.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_summary
      @summary = Summary.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def summary_params
      params.require(:summary).permit(:movie_id, :content)
    end

    def serializer
      SummarySerializer
    end
end
