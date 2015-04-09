class SujetsController < ApplicationController
  before_action :set_sujet, only: [:show, :edit, :update, :destroy]
  # GET /sujets
  # GET /sujets.json
  def index
    @sujets = Sujet.all

  end
  # GET /sujets/1
  # GET /sujets/1.json
  def show
    @titre =t('hello ') 

   
  end
  # GET /sujets/new
  def new
    @sujet = Sujet.new

  end
  # GET /sujets/1/edit
  def edit
  end

  # POST /sujets
  # POST /sujets.json
  def create
    @sujet = Sujet.new(sujet_params)
    respond_to do |format|
      if @sujet.save
        format.html { redirect_to @sujet, notice: t('succes_created') }
        format.json { render action: 'show', status: :created, location: @sujet }
      else
        format.html { render action: 'new' }
        format.json { render json: @sujet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sujets/1
  # PATCH/PUT /sujets/1.json
  def update
    respond_to do |format|
      if @sujet.update(sujet_params)
        format.html { redirect_to @sujet, notice: 'Sujet was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @sujet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sujets/1
  # DELETE /sujets/1.json
  def destroy
    @sujet.destroy
    respond_to do |format|
      format.html { redirect_to sujets_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sujet
      @sujet = Sujet.find(params[:id])

    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sujet_params
      params.require(:sujet).permit(:titre, :contenu)
    end
end
