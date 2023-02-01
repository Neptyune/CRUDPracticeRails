class DogdatesController < ApplicationController
  before_action :set_dogdate, only: %i[ show edit update destroy ]

  # GET /dogdates or /dogdates.json
  def index
    @dogdates = Dogdate.all
  end

  # GET /dogdates/1 or /dogdates/1.json
  def show
  end

  # GET /dogdates/new
  def new
    @dogdate = Dogdate.new
  end

  # GET /dogdates/1/edit
  def edit
  end

  # POST /dogdates or /dogdates.json
  def create
    @dogdate = Dogdate.new(dogdate_params)

    respond_to do |format|
      if @dogdate.save
        format.html { redirect_to dogdate_url(@dogdate), notice: "Dogdate was successfully created." }
        format.json { render :show, status: :created, location: @dogdate }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @dogdate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dogdates/1 or /dogdates/1.json
  def update
    respond_to do |format|
      if @dogdate.update(dogdate_params)
        format.html { redirect_to dogdate_url(@dogdate), notice: "Dogdate was successfully updated." }
        format.json { render :show, status: :ok, location: @dogdate }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @dogdate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dogdates/1 or /dogdates/1.json
  def destroy
    @dogdate.destroy

    respond_to do |format|
      format.html { redirect_to dogdates_url, notice: "Dogdate was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dogdate
      @dogdate = Dogdate.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dogdate_params
      params.require(:dogdate).permit(:account_id, :dogs_id, :date, :location)
    end
end
