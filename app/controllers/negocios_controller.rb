class NegociosController < ApplicationController
  before_action :set_negocio, only: [:show, :edit, :update, :destroy]

  # GET /negocios
  # GET /negocios.json

  def index
    @negocios = Negocio.all
    if params[:search]
      @negocios = Negocio.search(params[:search]).order("created_at DESC")
    else
      @negocios = Negocio.all.order('created_at DESC')
    end
  end
  
  # GET /negocios/1
  # GET /negocios/1.json
  def show
  end

  # GET /negocios/new
  def new
    @negocio = Negocio.new
  end

  # GET /negocios/1/edit
  def edit
  end

  # POST /negocios
  # POST /negocios.json
  def create
    @negocio = Negocio.new(negocio_params)

    respond_to do |format|
      if @negocio.save
        format.html { redirect_to @negocio, notice: 'Negocio was successfully created.' }
        format.json { render :show, status: :created, location: @negocio }
      else
        format.html { render :new }
        format.json { render json: @negocio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /negocios/1
  # PATCH/PUT /negocios/1.json
  def update
    respond_to do |format|
      if @negocio.update(negocio_params)
        format.html { redirect_to @negocio, notice: 'Negocio was successfully updated.' }
        format.json { render :show, status: :ok, location: @negocio }
      else
        format.html { render :edit }
        format.json { render json: @negocio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /negocios/1
  # DELETE /negocios/1.json
  def destroy
    @negocio.destroy
    respond_to do |format|
      format.html { redirect_to negocios_url, notice: 'Negocio was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_negocio
      @negocio = Negocio.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def negocio_params
      params.require(:negocio).permit(:name, :desc, :body, :telephone, :cellphone, :address, :schedule, :email, :lat, :lng)
    end

end
