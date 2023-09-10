class SeriesController < ApplicationController
  before_action :set_series, only: %i[ show edit update destroy ]

  # GET /series or /series.json
  def index
    @series = Serie.all
  end

  # GET /series/new
  def new
    @serie = Serie.new
  end

  # POST /series or /series.json
  def create
    @serie = Serie.new(series_params)

    respond_to do |format|
      if @serie.save
        format.html { redirect_to series_index_url(@serie), notice: "Serie was successfully created." }
        format.json { render :show, status: :created, location: @serie }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @serie.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_series
      @serie = Serie.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def series_params
      params.require(:serie).permit(:name, :synopsis, :director)
    end
end
