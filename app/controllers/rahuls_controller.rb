class RahulsController < ApplicationController
  before_action :set_rahul, only: %i[ show edit update destroy ]

  # GET /rahuls or /rahuls.json
  def index
    @rahuls = Rahul.all
  end

  # GET /rahuls/1 or /rahuls/1.json
  def show
  end

  # GET /rahuls/new
  def new
    @rahul = Rahul.new
  end

  # GET /rahuls/1/edit
  def edit
  end

  # POST /rahuls or /rahuls.json
  def create
    @rahul = Rahul.new(rahul_params)

    respond_to do |format|
      if @rahul.save
        format.html { redirect_to rahul_url(@rahul), notice: "Rahul was successfully created." }
        format.json { render :show, status: :created, location: @rahul }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @rahul.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rahuls/1 or /rahuls/1.json
  def update
    respond_to do |format|
      if @rahul.update(rahul_params)
        format.html { redirect_to rahul_url(@rahul), notice: "Rahul was successfully updated." }
        format.json { render :show, status: :ok, location: @rahul }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @rahul.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rahuls/1 or /rahuls/1.json
  def destroy
    @rahul.destroy

    respond_to do |format|
      format.html { redirect_to rahuls_url, notice: "Rahul was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rahul
      @rahul = Rahul.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def rahul_params
      params.require(:rahul).permit(:name, :age)
    end
end
