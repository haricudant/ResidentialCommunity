require "predictor_Dec.rb"
class CalsController < ApplicationController
  before_action :set_cal, only: [:show, :edit, :update, :destroy]

  
  def index
    @cals = Cal.all
  end

  # GET /cals/1
  # GET /cals/1.json
  def show
  end

  # GET /cals/new
  def new
    @cal = Cal.new
  end

  # GET /cals/1/edit
  def edit
  end

  # POST /cals
  # POST /cals.json
  def create
    
    @cal = Cal.new()
  
    @cal.name = params[:cal][:name]
    #@cal.description = params[:cal][:description]
    @cal.rent = params[:cal][:rent]
    myCal = Basicexpense.new(@cal.rent)
    
    @a_sport =  params[:cal][:sports]
    @a_laund =  params[:cal][:laundry]
    @a_misc  =  params[:cal][:misc]
    @a_park  =  params[:cal][:parking]
    @a_pet   =  params[:cal][:pet]
    
    puts "knfrknfreknkefe #{ @a_sport}"
    
    if params[:cal][:sports].to_s.length > 0 then
      myCal = SportsAmenities.new(myCal)
    end 
    if params[:cal][:laundry].to_s.length > 0 then
      myCal = LaundryAmenities.new(myCal)
    end
     if params[:cal][:misc].to_s.length > 0 then
      myCal = MiscellaneousAmenities.new(myCal)
    end
    if params[:cal][:parking].to_s.length > 0 then
      myCal = ParkingAmenities.new(myCal)
    end
    if params[:cal][:pet].to_s.length > 0 then
      myCal = PetAmenities.new(myCal)
    end

    @cal.rent = myCal.cost
    #@cal.description = myCal.benefits

    respond_to do |format|
      if @cal.save
        format.html { redirect_to @cal, notice: 'Calculation was successfully created.' }
        format.json { render :show, status: :created, location: @cal }
      else
        format.html { render :new }
        format.json { render json: @cal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cals/1
  # PATCH/PUT /cals/1.json
  def update
    respond_to do |format|
      if @cal.update(cal_params)
        format.html { redirect_to @cal, notice: 'Cal was successfully updated.' }
        format.json { render :show, status: :ok, location: @cal }
      else
        format.html { render :edit }
        format.json { render json: @cal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cals/1
  # DELETE /cals/1.json
  def destroy
    @cal.destroy
    respond_to do |format|
      format.html { redirect_to cals_url, notice: 'Cal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cal
      @cal = Cal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cal_params
      params.require(:cal).permit(:name, :rent)
    end
end
