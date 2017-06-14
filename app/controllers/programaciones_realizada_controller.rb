class ProgramacionesRealizadaController < ApplicationController
  before_action :set_programacion_realizada, only: [:show, :edit, :update, :destroy]

  # GET /programaciones_realizada
  # GET /programaciones_realizada.json
  def index
    @programaciones_realizada = ProgramacioneRealizada.all
  end

  # GET /programaciones_realizada/1
  # GET /programaciones_realizada/1.json
  def show
  end

  # GET /programaciones_realizada/new
  def new
    @programacion_realizada = ProgramacioneRealizada.new
  end

  # GET /programaciones_realizada/1/edit
  def edit
  end

  # POST /programaciones_realizada
  # POST /programaciones_realizada.json
  def create
    @programacion_realizada = ProgramacioneRealizada.new(programacion_realizada_params)

    respond_to do |format|
      if @programacion_realizada.save
        format.html { redirect_to @programacion_realizada, notice: 'Programacione realizada was successfully created.' }
        format.json { render :show, status: :created, location: @programacion_realizada }
      else
        format.html { render :new }
        format.json { render json: @programacion_realizada.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /programaciones_realizada/1
  # PATCH/PUT /programaciones_realizada/1.json
  def update
    respond_to do |format|
      if @programacion_realizada.update(programacion_realizada_params)
        format.html { redirect_to @programacion_realizada, notice: 'Programacione realizada was successfully updated.' }
        format.json { render :show, status: :ok, location: @programacion_realizada }
      else
        format.html { render :edit }
        format.json { render json: @programacion_realizada.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /programaciones_realizada/1
  # DELETE /programaciones_realizada/1.json
  def destroy
    @programacion_realizada.destroy
    respond_to do |format|
      format.html { redirect_to programaciones_realizada_url, notice: 'Programacione realizada was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_programacion_realizada
      @programacion_realizada = ProgramacioneRealizada.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def programacion_realizada_params
      params.require(:programacion_realizada).permit(:programacion_id, :fecha, :prenda, :pieza, :talla, :telas_id, :cantidad)
    end
end
