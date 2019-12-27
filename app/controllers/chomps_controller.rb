class ChompsController < ApplicationController
  before_action :set_chomp, only: [:show, :edit, :update, :destroy]

  # GET /chomps
  # GET /chomps.json
  def index
    @chomps = Chomp.all
  end

  # GET /chomps/1
  # GET /chomps/1.json
  def show
  end

  # GET /chomps/new
  def new
    @chomp = Chomp.new
  end

  # GET /chomps/1/edit
  def edit
  end

  # POST /chomps
  # POST /chomps.json
  def create
    @chomp = Chomp.new(chomp_params)

    respond_to do |format|
      if @chomp.save
        format.html { redirect_to @chomp, notice: 'Chomp was successfully created.' }
        format.json { render :show, status: :created, location: @chomp }
      else
        format.html { render :new }
        format.json { render json: @chomp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chomps/1
  # PATCH/PUT /chomps/1.json
  def update
    respond_to do |format|
      if @chomp.update(chomp_params)
        format.html { redirect_to @chomp, notice: 'Chomp was successfully updated.' }
        format.json { render :show, status: :ok, location: @chomp }
      else
        format.html { render :edit }
        format.json { render json: @chomp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chomps/1
  # DELETE /chomps/1.json
  def destroy
    @chomp.destroy
    respond_to do |format|
      format.html { redirect_to chomps_url, notice: 'Chomp was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chomp
      @chomp = Chomp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chomp_params
      params.require(:chomp).permit(:name, :content)
    end
end
