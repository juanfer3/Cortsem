class PedidosDetalladoController < ApplicationController
  before_action :set_pedido_detallado, only: [:show, :edit, :update, :destroy]

  # GET /pedidos_detallado
  # GET /pedidos_detallado.json
  def index
    @pedidos_detallado = PedidoDetallado.all
  end

  # GET /pedidos_detallado/1
  # GET /pedidos_detallado/1.json
  def show
  end

  # GET /pedidos_detallado/new
  def new
    @pedido_detallado = PedidoDetallado.new
  end

  # GET /pedidos_detallado/1/edit
  def edit
  end

  # POST /pedidos_detallado
  # POST /pedidos_detallado.json
  def create
    @pedido_detallado = PedidoDetallado.new(pedido_detallado_params)

    respond_to do |format|
      if @pedido_detallado.save
        format.html { redirect_to @pedido_detallado, notice: 'Pedido detallado was successfully created.' }
        format.json { render :show, status: :created, location: @pedido_detallado }
      else
        format.html { render :new }
        format.json { render json: @pedido_detallado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pedidos_detallado/1
  # PATCH/PUT /pedidos_detallado/1.json
  def update
    respond_to do |format|
      if @pedido_detallado.update(pedido_detallado_params)
        format.html { redirect_to @pedido_detallado, notice: 'Pedido detallado was successfully updated.' }
        format.json { render :show, status: :ok, location: @pedido_detallado }
      else
        format.html { render :edit }
        format.json { render json: @pedido_detallado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pedidos_detallado/1
  # DELETE /pedidos_detallado/1.json
  def destroy
    @pedido_detallado.destroy
    respond_to do |format|
      format.html { redirect_to pedidos_detallado_url, notice: 'Pedido detallado was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pedido_detallado
      @pedido_detallado = PedidoDetallado.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pedido_detallado_params
      params.require(:pedido_detallado).permit(:pedido_id, :prenda, :pieza, :talla, :tela_id, :cantidad, :val_unit, :total)
    end
end
