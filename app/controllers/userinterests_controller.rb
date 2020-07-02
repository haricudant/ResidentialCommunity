class UserinterestsController < ApplicationController
  def index
    @events = Event.find(params[:event_id])
    @userinterests = @events.userinterests
  end

  def show
    @events = Event.find(params[:event_id])
    @userinterests = @events.userinterests.find(params[:id])

  end

  def new
    @events = Event.find(params[:event_id])
         @userinterests=@events.userinterests.build
  end
  def create
    @events = Event.find(params[:event_id])
    @userinterests=@events.userinterests.build(params.require(:userinterest).permit(:isinterest))
    if @userinterests.save
    # Save the review successfully
    redirect_to event_userinterests_path(@events, @userinterests)
    else
    render :action => "new"
    end

  end

  def edit
     @events = Event.find(params[:event_id])
     @userinterests = @events.userinterests.find(params[:id])
  end
  def update
      @events = Event.find(params[:event_id])
      @userinterests = Userinterest.find(params[:id])
          if @userinterests.update_attributes(params.require(:userinterest).permit(:isinterest))
# Save the review successfully
          redirect_to event_userinterests_path(@events, @userinterests)
          else
          render :action => "edit"
          end
          end
# DELETE /movies/1/reviews/2
def destroy
      @events = Event.find(params[:event_id])
      @userinterests = Userinterest.find(params[:id])
@userinterests.destroy
respond_to do |format|
format.html { redirect_to event_userinterests_path(@events) }
format.xml { head :ok }
end
end

end
