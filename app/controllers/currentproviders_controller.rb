class CurrentprovidersController < ApplicationController
 before_action :authenticate_user!
  before_action :ensure_admin, :only => [:new,:create, :destroy]
  before_action :set_currentprovider, only: [:show, :edit, :update, :destroy]

 def ensure_admin
    unless current_user && current_user.admin?
      render :text => "Access Error Message", :status => :unauthorized  
    end
  end
  # GET /currentproviders
  # GET /currentproviders.json
  def index
    @currentproviders = Currentprovider.all
  end

  # GET /currentproviders/1
  # GET /currentproviders/1.json
  def show
  end

  # GET /currentproviders/new
  def new
    @currentprovider = Currentprovider.new
  end

  # GET /currentproviders/1/edit
  def edit
  end

  # POST /currentproviders
  # POST /currentproviders.json
  def create
    @currentprovider = Currentprovider.new(currentprovider_params)

    respond_to do |format|
      if @currentprovider.save
        format.html { redirect_to @currentprovider, notice: 'Currentprovider was successfully created.' }
        format.json { render :show, status: :created, location: @currentprovider }
      else
        format.html { render :new }
        format.json { render json: @currentprovider.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /currentproviders/1
  # PATCH/PUT /currentproviders/1.json
  def update
    respond_to do |format|
      if @currentprovider.update(currentprovider_params)
        format.html { redirect_to @currentprovider, notice: 'Currentprovider was successfully updated.' }
        format.json { render :show, status: :ok, location: @currentprovider }
      else
        format.html { render :edit }
        format.json { render json: @currentprovider.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /currentproviders/1
  # DELETE /currentproviders/1.json
  def destroy
    @currentprovider.destroy
    respond_to do |format|
      format.html { redirect_to currentproviders_url, notice: 'Currentprovider was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_currentprovider
      @currentprovider = Currentprovider.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def currentprovider_params
      params.require(:currentprovider).permit(:providername, :cost, :standingcharge, :pslvcharge)
    end
end
