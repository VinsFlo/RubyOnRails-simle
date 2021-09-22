class PossuvideosController < ApplicationController
  before_action :set_possuvideo, only: %i[ show edit update destroy ]

  # GET /possuvideos or /possuvideos.json
  def index
    @possuvideos = Possuvideo.all
  end

  # GET /possuvideos/1 or /possuvideos/1.json
  def show
  end

  # GET /possuvideos/new
  def new
    @possuvideo = Possuvideo.new
  end

  # GET /possuvideos/1/edit
  def edit
  end

  # POST /possuvideos or /possuvideos.json
  def create
    @possuvideo = Possuvideo.new(possuvideo_params)

    respond_to do |format|
      if @possuvideo.save
        format.html { redirect_to @possuvideo, notice: "Possuvideo was successfully created." }
        format.json { render :show, status: :created, location: @possuvideo }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @possuvideo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /possuvideos/1 or /possuvideos/1.json
  def update
    respond_to do |format|
      if @possuvideo.update(possuvideo_params)
        format.html { redirect_to @possuvideo, notice: "Possuvideo was successfully updated." }
        format.json { render :show, status: :ok, location: @possuvideo }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @possuvideo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /possuvideos/1 or /possuvideos/1.json
  def destroy
    @possuvideo.destroy
    respond_to do |format|
      format.html { redirect_to possuvideos_url, notice: "Possuvideo was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_possuvideo
      @possuvideo = Possuvideo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def possuvideo_params
      params.require(:possuvideo).permit(:image, :video, :tittle, :star, :description)
    end
end
