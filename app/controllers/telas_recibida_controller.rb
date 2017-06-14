class TelasRecibidaController < ApplicationController
  before_action :set_tela_recibida, only: [:show, :edit, :update, :destroy]

  # GET /telas_recibida
  # GET /telas_recibida.json
  def index
    @telas_recibida = TelaRecibida.all
  end

  # GET /telas_recibida/1
  # GET /telas_recibida/1.json
  def show
  end

  # GET /telas_recibida/new
  def new
    @tela_recibida = TelaRecibida.new
  end

  # GET /telas_recibida/1/edit
  def edit
  end

  # POST /telas_recibida
  # POST /telas_recibida.json
  def create
    @tela_recibida = TelaRecibida.new(tela_recibida_params)

    respond_to do |format|
      if @tela_recibida.save
        format.html { redirect_to @tela_recibida, notice: 'Tela recibida was successfully created.' }
        format.json { render :show, status: :created, location: @tela_recibida }
      else
        format.html { render :new }
        format.json { render json: @tela_recibida.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /telas_recibida/1
  # PATCH/PUT /telas_recibida/1.json
  def update
    respond_to do |format|
      if @tela_recibida.update(tela_recibida_params)
        format.html { redirect_to @tela_recibida, notice: 'Tela recibida was successfully updated.' }
        format.json { render :show, status: :ok, location: @tela_recibida }
      else
        format.html { render :edit }
        format.json { render json: @tela_recibida.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /telas_recibida/1
  # DELETE /telas_recibida/1.json
  def destroy
    @tela_recibida.destroy
    respond_to do |format|
      format.html { redirect_to telas_recibida_url, notice: 'Tela recibida was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tela_recibida
      @tela_recibida = TelaRecibida.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tela_recibida_params
      params.require(:tela_recibida).permit(:descripcion, :tipo_unidad, :cantidad_recibida, :val_unit, :cantidad_devuelta, :total)
    end
end
