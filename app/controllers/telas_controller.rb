class TelasController < ApplicationController
  before_action :set_tela, only: [:show, :edit, :update, :destroy]

  # GET /telas
  # GET /telas.json
  def index
    @telas = Tela.all
  end

  # GET /telas/1
  # GET /telas/1.json
  def show
  end

  # GET /telas/new
  def new
    @tela = Tela.new
  end

  # GET /telas/1/edit
  def edit
  end

  # POST /telas
  # POST /telas.json
  def create
    @tela = Tela.new(tela_params)

    respond_to do |format|
      if @tela.save
        format.html { redirect_to @tela, notice: 'Tela was successfully created.' }
        format.json { render :show, status: :created, location: @tela }
      else
        format.html { render :new }
        format.json { render json: @tela.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /telas/1
  # PATCH/PUT /telas/1.json
  def update
    respond_to do |format|
      if @tela.update(tela_params)
        format.html { redirect_to @tela, notice: 'Tela was successfully updated.' }
        format.json { render :show, status: :ok, location: @tela }
      else
        format.html { render :edit }
        format.json { render json: @tela.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /telas/1
  # DELETE /telas/1.json
  def destroy
    @tela.destroy
    respond_to do |format|
      format.html { redirect_to telas_url, notice: 'Tela was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tela
      @tela = Tela.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tela_params
      params.require(:tela).permit(:tipo_tela)
    end
end
