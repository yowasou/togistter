class MatomesController < ApplicationController
  before_action :set_matome, only: [:show, :edit, :update, :destroy]

  # GET /matomes
  # GET /matomes.json
  def index
    @matomes = Matome.all.order("id desc").limit(20)
  end
  def icon
    id = params[:id]
    matome = Matome.find(id)
    codetype = matome.codetype
    if (codetype == nil)
      codetype = Codetype.first
    end
    send_data(codetype.icon, type: codetype.icon_content_type, disposition: :inline)
  end
  # GET /matomes/1
  # GET /matomes/1.json
  def show
    @gists = Gist.where("matome_id = ?", @matome.id)
  end

  # GET /matomes/new
  def new
    @matome = Matome.new
  end

  # GET /matomes/1/edit
  def edit
  end

  # POST /matomes
  # POST /matomes.json
  def create
    @matome = Matome.new(matome_params)

    respond_to do |format|
      if @matome.save
        format.html { redirect_to @matome, notice: 'Matome was successfully created.' }
        format.json { render :show, status: :created, location: @matome }
      else
        format.html { render :new }
        format.json { render json: @matome.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /matomes/1
  # PATCH/PUT /matomes/1.json
  def update
    respond_to do |format|
      if @matome.update(matome_params)
        format.html { redirect_to @matome, notice: 'Matome was successfully updated.' }
        format.json { render :show, status: :ok, location: @matome }
      else
        format.html { render :edit }
        format.json { render json: @matome.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /matomes/1
  # DELETE /matomes/1.json
  def destroy
    @matome.destroy
    respond_to do |format|
      format.html { redirect_to matomes_url, notice: 'Matome was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_matome
      @matome = Matome.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def matome_params
      params.require(:matome).permit(:name, :description)
    end
end
