class AmertumesController < ApplicationController
  before_action :set_amertume, only: [:show, :edit, :update, :destroy]

  # GET /amertumes
  # GET /amertumes.json
  def index
    @amertumes = Amertume.all
  end

  # GET /amertumes/1
  # GET /amertumes/1.json
  def show
  end

  # GET /amertumes/new
  def new
    @amertume = Amertume.new
  end

  # GET /amertumes/1/edit
  def edit
  end

  # POST /amertumes
  # POST /amertumes.json
  def create
    @amertume = Amertume.new(amertume_params)

    respond_to do |format|
      if @amertume.save
        format.html { redirect_to @amertume, notice: 'Amertume was successfully created.' }
        format.json { render :show, status: :created, location: @amertume }
      else
        format.html { render :new }
        format.json { render json: @amertume.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /amertumes/1
  # PATCH/PUT /amertumes/1.json
  def update
    respond_to do |format|
      if @amertume.update(amertume_params)
        format.html { redirect_to @amertume, notice: 'Amertume was successfully updated.' }
        format.json { render :show, status: :ok, location: @amertume }
      else
        format.html { render :edit }
        format.json { render json: @amertume.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /amertumes/1
  # DELETE /amertumes/1.json
  def destroy
    @amertume.destroy
    respond_to do |format|
      format.html { redirect_to amertumes_url, notice: 'Amertume was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_amertume
      @amertume = Amertume.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def amertume_params
      params.require(:amertume).permit(:title, :content, :user_id)
    end
end
