class GenerosController < ApplicationController
  before_action :set_genero, only: %i[ show edit update destroy ]
    
  # GET /generos or /generos.json
  def index
    @generos = Genero.all
  end

  # GET /generos/1 or /generos/1.json
  def show        
  end

  # GET /generos/new
  def new
    @genero = Genero.new

    respond_to do |format|    
      format.html      
      format.js
    end
  end
  
  # GET /generos/1/edit
  def edit
  end
  
  # POST /generos or /generos.json
  def create
    
      @genero = Genero.new(genero_params)
      

      respond_to do |format|
        if @genero.save
          format.html #{ redirect_to genero_url(@genero), notice: "Genero was successfully created." }
          format.json #{ render :show, status: :created, location: @genero }
          format.js { 
            @opcoes_genero = Genero.all.order(:nome).pluck(:nome, :id) 
            render inline: "location.reload();" } # { render 'modal', remote: true }
        else
          format.html #{ render :new, status: :unprocessable_entity }
          format.json #{ render json: @genero.errors, status: :unprocessable_entity }
          format.js # { render 'modal', remote: true }
        end
      end
    
  end

  # PATCH/PUT /generos/1 or /generos/1.json
  def update
    respond_to do |format|
      if @genero.update(genero_params)
        format.html { redirect_to genero_url(@genero), notice: "Genero was successfully updated." }
        format.json { render :show, status: :ok, location: @genero }
        format.js
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @genero.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # DELETE /generos/1 or /generos/1.json
  def destroy
    @genero.destroy

    respond_to do |format|
      format.html { redirect_to generos_url, notice: "Genero was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private    
    # Use callbacks to share common setup or constraints between actions.
    def set_genero
      @genero = Genero.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def genero_params
      params.require(:genero).permit(:nome)
    end
end