class ColdsController < ApplicationController
  before_action :set_cold, only: [:show, :edit, :update, :destroy]

  # GET /colds
  # GET /colds.json
  def index
    @colds = Cold.all
  end

  # GET /colds/1
  # GET /colds/1.json
  def show
  end

  # GET /colds/new
  def new
    @cold = Cold.new
  end

  # GET /colds/1/edit
  def edit
  end

  # POST /colds
  # POST /colds.json
  def create
    @cold = Cold.new(cold_params)

    respond_to do |format|
      if @cold.save
        format.html { redirect_to @cold, notice: 'Cold was successfully created.' }
        format.json { render :show, status: :created, location: @cold }
      else
        format.html { render :new }
        format.json { render json: @cold.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /colds/1
  # PATCH/PUT /colds/1.json
  def update
    respond_to do |format|
      if @cold.update(cold_params)
        format.html { redirect_to @cold, notice: 'Cold was successfully updated.' }
        format.json { render :show, status: :ok, location: @cold }
      else
        format.html { render :edit }
        format.json { render json: @cold.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /colds/1
  # DELETE /colds/1.json
  def destroy
    @cold.destroy
    respond_to do |format|
      format.html { redirect_to colds_url, notice: 'Cold was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cold
      @cold = Cold.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cold_params
      params.require(:cold).permit(:choose)
    end
end
