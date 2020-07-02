class PollsController < ApplicationController
  before_action :authenticate_user!
  before_action :ensure_admin, :only => [:new,:create, :destroy]
  before_action :set_poll, only: [:show, :edit, :update, :destroy]
  # GET /polls
  # GET /polls.json
  
  
  def ensure_admin
    unless current_user && current_user.admin?
      render :text => "Access Error Message", :status => :unauthorized  
    end
  end

  def index
    @polls = Poll.all
    
  end

  # GET /polls/1
  # GET /polls/1.json
  def show
    @poll = Poll.find(params[:id])
    @poll = Poll.includes(:vote_values).find_by_id(params[:id])
  end


  # GET /polls/new
  def new
    @poll = Poll.new
    @poll.vote_values.build
    
  end

  # GET /polls/1/edit
  def edit
    @poll = Poll.find_by_id(params[:id])
  end

  # POST /polls
  # POST /polls.json
  def create
    @poll = Poll.new(poll_params)

    respond_to do |format|
      if @poll.save
        format.html { redirect_to @poll, notice: 'Poll was successfully created.' }
        format.json { render :show, status: :created, location: @poll }
      else
        format.html { render :new }
        format.json { render json: @poll.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /polls/1
  # PATCH/PUT /polls/1.json
  def update
    respond_to do |format|
      if @poll.update(poll_params)
        format.html { redirect_to @poll, notice: 'Poll was successfully updated.' }
        format.json { render :show, status: :ok, location: @poll }
      else
        format.html { render :edit }
        format.json { render json: @poll.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /polls/1
  # DELETE /polls/1.json
  def destroy
    @poll.destroy
    respond_to do |format|
      format.html { redirect_to polls_url, notice: 'Poll was successfully destroyed.' }
      format.json { head :no_content }
    end
  end  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_poll
      @poll = Poll.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def poll_params
      params.require(:poll).permit(:topic,vote_values_attributes: [:id,:title, :_destroy])
    end
end
