class FilmesController < ApplicationController
  before_action :set_filme, only: [:show, :edit, :update, :destroy]  
  before_action :set_opcoes_genero, only: [:new, :create, :edit, :update]
  
  skip_before_action :verify_authenticity_token

  # GET /filmes or /filmes.json
  def index        
    if params[:busca].present?
      @resultados = Filme.buscar_filme(params[:busca])      
      respond_to do |format|
        format.js { render partial: "resultados-busca" }
      end
    else
      @filmes = Filme.all
      flash[:notice] = "Nenhum filme foi cadastrado" if @filmes.blank?
    end
    
    respond_to do |format|    
      format.html { @filmes = Filme.order(:titulo).page params[:page] }
      format.pdf { @filmes = Filme.order(:titulo) }      
    end
  end

  # GET /filmes/1 or /filmes/1.json
  def show        
  end

  # GET /filmes/new
  def new
    @filme = Filme.new
  end

  # GET /filmes/1/edit
  def edit    
  end

  # POST /filmes or /filmes.json
  def create
    @filme = Filme.new(filme_params)

    respond_to do |format|
      if @filme.save
        format.html { redirect_to filme_url(@filme)
        flash[:success] = t('filme.save') }
        format.json { render :show, status: :created, location: @filme }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @filme.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /filmes/1 or /filmes/1.json
  def update
    respond_to do |format|
      if @filme.update(filme_params)
        format.html { redirect_to filme_url(@filme)
        flash[:success] = t('filme.update') }
        format.json { render :show, status: :ok, location: @filme }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @filme.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /filmes/1 or /filmes/1.json
  def destroy
    @filme.destroy

    respond_to do |format|
      format.html { redirect_to filmes_url
      flash[:success] = t('filme.delete') }
      format.json { head :no_content }
    end
  end
  
  private
    def set_opcoes_genero
      @opcoes_genero = Genero.all.order(:nome).pluck(:nome, :id)
    end 
    # Use callbacks to share common setup or constraints between actions.
    def set_filme
      @filme = Filme.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def filme_params
      params.require(:filme).permit(:titulo, :url_capa, :capa, :ano, :idade, :elenco, :sinopse, :genero_id, {:filme_genero => []})
    end
end
