class HosController < ApplicationController
  before_action :set_ho, only: [:show, :edit, :update, :destroy]

  # GET /hos
  # GET /hos.json
  def index
    @hos = Ho.all
  end

  # GET /hos/1
  # GET /hos/1.json
  def show
  end

  # GET /hos/new
  def new
    @ho = Ho.new
  end

  # GET /hos/1/edit
  def edit
  end

  # POST /hos
  # POST /hos.json
  def create
    @ho = Ho.new(ho_params)

    respond_to do |format|
      if @ho.save
        format.html { redirect_to @ho, notice: 'Ho was successfully created.' }
        format.json { render :show, status: :created, location: @ho }
      else
        format.html { render :new }
        format.json { render json: @ho.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hos/1
  # PATCH/PUT /hos/1.json
  def update
    respond_to do |format|
      if @ho.update(ho_params)
        format.html { redirect_to @ho, notice: 'Ho was successfully updated.' }
        format.json { render :show, status: :ok, location: @ho }
      else
        format.html { render :edit }
        format.json { render json: @ho.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hos/1
  # DELETE /hos/1.json
  def destroy
    @ho.destroy
    respond_to do |format|
      format.html { redirect_to hos_url, notice: 'Ho was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ho
      @ho = Ho.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ho_params
      params.require(:ho).permit(:name)
    end
end
