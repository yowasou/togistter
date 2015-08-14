class CodetypesController < ApplicationController
  before_action :set_codetype, only: [:show, :edit, :update, :destroy]

  # GET /codetypes
  # GET /codetypes.json
  def index
    @codetypes = Codetype.all
  end

  # GET /codetypes/1
  # GET /codetypes/1.json
  def show
  end

  # GET /codetypes/new
  def new
    @codetype = Codetype.new
  end

  # GET /codetypes/1/edit
  def edit
  end

  # POST /codetypes
  # POST /codetypes.json
  def create
    @codetype = Codetype.new(codetype_params)

    respond_to do |format|
      if @codetype.save
        format.html { redirect_to @codetype, notice: 'Codetype was successfully created.' }
        format.json { render :show, status: :created, location: @codetype }
      else
        format.html { render :new }
        format.json { render json: @codetype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /codetypes/1
  # PATCH/PUT /codetypes/1.json
  def update
    respond_to do |format|
      if @codetype.update(codetype_params)
        format.html { redirect_to @codetype, notice: 'Codetype was successfully updated.' }
        format.json { render :show, status: :ok, location: @codetype }
      else
        format.html { render :edit }
        format.json { render json: @codetype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /codetypes/1
  # DELETE /codetypes/1.json
  def destroy
    @codetype.destroy
    respond_to do |format|
      format.html { redirect_to codetypes_url, notice: 'Codetype was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_codetype
      @codetype = Codetype.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def codetype_params
      params.require(:codetype).permit(:name, :description)
    end
end
