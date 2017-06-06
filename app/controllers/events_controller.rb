class EventsController < ApplicationController
  def show
  @event = Event.find(params[:id])	
  end

  def index
  @past_events = Event.past
  @upcoming_events = Event.upcoming	
  end

  def new
@event = Event.new
  end

  def create
  @event = current_user.events.build(event_params)
  if @event.save
  redirect_to events_path
  else
  flash[:danger] ="didnt work !!!"	
  render 'new'
  end	

  end


def invite
  @event = Event.find(params[:event])
  
  if params[:user]
    @event.invitees << User.find(params[:user].to_i)
    User.find(params[:user].to_i).parties << @event
    flash.now[:info] = "#{User.find(params[:user].to_i).username} is invited"  
    end 
    @users = User.all
    render  'users/index'

end


  private

  def event_params
params.require(:event).permit(:place, :date)
  end
end
