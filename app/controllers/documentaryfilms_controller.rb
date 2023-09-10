class DocumentaryfilmsController < ApplicationController
  before_action :set_documentaryfilm, only: %i[ show edit update destroy ]

  # GET /documentaryfilms or /documentaryfilms.json
  def index
    @documentaryfilms = Documentaryfilm.all
  end

  # GET /documentaryfilms/1 or /documentaryfilms/1.json
  def show
  end

  # GET /documentaryfilms/new
  def new
    @documentaryfilm = Documentaryfilm.new
  end

  # GET /documentaryfilms/1/edit
  def edit
  end

  # POST /documentaryfilms or /documentaryfilms.json
  def create
    @documentaryfilm = Documentaryfilm.new(documentaryfilm_params)

    respond_to do |format|
      if @documentaryfilm.save
        format.html { redirect_to documentaryfilm_url(@documentaryfilm), notice: "Documentaryfilm was successfully created." }
        format.json { render :show, status: :created, location: @documentaryfilm }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @documentaryfilm.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /documentaryfilms/1 or /documentaryfilms/1.json
  def update
    respond_to do |format|
      if @documentaryfilm.update(documentaryfilm_params)
        format.html { redirect_to documentaryfilm_url(@documentaryfilm), notice: "Documentaryfilm was successfully updated." }
        format.json { render :show, status: :ok, location: @documentaryfilm }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @documentaryfilm.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /documentaryfilms/1 or /documentaryfilms/1.json
  def destroy
    @documentaryfilm.destroy

    respond_to do |format|
      format.html { redirect_to documentaryfilms_url, notice: "Documentaryfilm was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_documentaryfilm
      @documentaryfilm = Documentaryfilm.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def documentaryfilm_params
      params.require(:documentaryfilm).permit(:name, :synopsis, :director)
    end
end
