class ComissionsController < ApplicationController
  before_action :set_comission, only: %i[ show edit update destroy ]

  # GET /comissions or /comissions.json
  def index
    @comissions = Comission.all
  end

  # GET /comissions/1 or /comissions/1.json
  def show
  end

  # GET /comissions/new
  def new
    @comission = Comission.new
  end

  # GET /comissions/1/edit
  def edit
  end

  # POST /comissions or /comissions.json
  def create
    @comission = Comission.new(comission_params)

    respond_to do |format|
      if @comission.save
        format.html { redirect_to comission_url(@comission), notice: "Comission was successfully created." }
        format.json { render :show, status: :created, location: @comission }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @comission.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comissions/1 or /comissions/1.json
  def update
    respond_to do |format|
      if @comission.update(comission_params)
        format.html { redirect_to comission_url(@comission), notice: "Comission was successfully updated." }
        format.json { render :show, status: :ok, location: @comission }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @comission.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comissions/1 or /comissions/1.json
  def destroy
    @comission.destroy

    respond_to do |format|
      format.html { redirect_to comissions_url, notice: "Comission was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comission
      @comission = Comission.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def comission_params
      params.require(:comission).permit(:order_id, :user_id, :amount, :payed)
    end
end
