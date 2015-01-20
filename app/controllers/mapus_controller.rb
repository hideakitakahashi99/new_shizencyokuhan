class MapusController < ApplicationController
  before_action :set_mapu, only: [:show, :edit, :update, :destroy]

  # GET /mapus
  # GET /mapus.json
  def index
    @mapus = Mapu.all
  end

  # GET /mapus/1
  # GET /mapus/1.json
  def show
  end

  # GET /mapus/new
  def new
    @mapu = Mapu.new
  end

  # GET /mapus/1/edit
  def edit
  end

  # POST /mapus
  # POST /mapus.json
  def create
    @mapu = Mapu.new(mapu_params)

    respond_to do |format|
      if @mapu.save
        format.html { redirect_to @mapu, notice: 'Mapu was successfully created.' }
        format.json { render :show, status: :created, location: @mapu }
      else
        format.html { render :new }
        format.json { render json: @mapu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mapus/1
  # PATCH/PUT /mapus/1.json
  def update
    respond_to do |format|
      if @mapu.update(mapu_params)
        format.html { redirect_to @mapu, notice: 'Mapu was successfully updated.' }
        format.json { render :show, status: :ok, location: @mapu }
      else
        format.html { render :edit }
        format.json { render json: @mapu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mapus/1
  # DELETE /mapus/1.json
  def destroy
    @mapu.destroy
    respond_to do |format|
      format.html { redirect_to mapus_url, notice: 'Mapu was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mapu
      @mapu = Mapu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mapu_params
      params.require(:mapu).permit(:longitude, :latitude, :address, :description, :title)
    end
end
