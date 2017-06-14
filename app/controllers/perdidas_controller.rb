class PerdidasController < ApplicationController
  before_action :set_perdida, only: [:show, :edit, :update, :destroy]

  # GET /perdidas
  # GET /perdidas.json
  def index
    @perdidas = Perdida.all
  end

  # GET /perdidas/1
  # GET /perdidas/1.json
  def show
  end

  # GET /perdidas/new
  def new
    @perdida = Perdida.new
  end

  # GET /perdidas/1/edit
  def edit
  end

  # POST /perdidas
  # POST /perdidas.json
  def create
    @perdida = Perdida.new(perdida_params)

    respond_to do |format|
      if @perdida.save
        format.html { redirect_to @perdida, notice: 'Perdida was successfully created.' }
        format.json { render :show, status: :created, location: @perdida }
      else
        format.html { render :new }
        format.json { render json: @perdida.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /perdidas/1
  # PATCH/PUT /perdidas/1.json
  def update
    respond_to do |format|
      if @perdida.update(perdida_params)
        format.html { redirect_to @perdida, notice: 'Perdida was successfully updated.' }
        format.json { render :show, status: :ok, location: @perdida }
      else
        format.html { render :edit }
        format.json { render json: @perdida.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /perdidas/1
  # DELETE /perdidas/1.json
  def destroy
    @perdida.destroy
    respond_to do |format|
      format.html { redirect_to perdidas_url, notice: 'Perdida was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_perdida
      @perdida = Perdida.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def perdida_params
      params.require(:perdida).permit(:descripcion, :tipo_unidad, :cantidad, :val_unit, :total)
    end
end
