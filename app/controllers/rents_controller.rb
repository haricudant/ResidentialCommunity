class RentsController < ApplicationController
  #require 'rent'
  before_action :set_rent, only: [:show, :edit, :update, :destroy]

  # GET /rents
  # GET /rents.json
  def index
    @rents = Rent.all
  end

  # GET /rents/1
  # GET /rents/1.json
  def show
    gr = Rent.find(params[:id]).grossrent
    mi = Rent.find(params[:id]).mortage_interest
    reoair = Rent.find(params[:id]).repairs
    ins = Rent.find(params[:id]).insurance
    manacharge = Rent.find(params[:id]).management_charges
    agefee = Rent.find(params[:id]).agent_fee
    o = Rent.find(params[:id]).other
    wr = Rent.find(params[:id]).wear_and_tear
    good = Rentalprofitorloss::Rentalmaster.expense(gr,mi,reoair,ins,manacharge,agefee,o,wr)
    @duck = good
    
  end

  # GET /rents/new
  def new
    @rent = Rent.new
  end

  # GET /rents/1/edit
  def edit
  end

  # POST /rents
  # POST /rents.json
  def create
    @rent = Rent.new(rent_params)

    respond_to do |format|
      if @rent.save
        format.html { redirect_to @rent, notice: 'Rent was successfully created.' }
        format.json { render :show, status: :created, location: @rent }
      else
        format.html { render :new }
        format.json { render json: @rent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rents/1
  # PATCH/PUT /rents/1.json
  def update
    respond_to do |format|
      if @rent.update(rent_params)
        format.html { redirect_to @rent, notice: 'Rent was successfully updated.' }
        format.json { render :show, status: :ok, location: @rent }
      else
        format.html { render :edit }
        format.json { render json: @rent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rents/1
  # DELETE /rents/1.json
  def destroy
    @rent.destroy
    respond_to do |format|
      format.html { redirect_to rents_url, notice: 'Rent was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rent
      @rent = Rent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rent_params
      params.require(:rent).permit(:grossrent, :mortage_interest, :mortage_interest_allowed, :repairs, :insurance, :management_charges, :agent_fee, :other, :total_expenses, :rental_profit_or_loss, :wear_and_tear, :net_profit_or_loss, :income_tac, :prsi, :usc, :total)
    end
end
