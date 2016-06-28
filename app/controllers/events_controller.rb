class EventsController < ApplicationController
  def index
	@events = Event.all
  end
  
	$count = 1

  def show
	@event = Event.find(params[:id])
  end	
  
  def new
	@event = Event.new
	client = Mysql2::Client.new(:host => "localhost", :username => "root", :password => "password", :database => "database name")
	@counter = client.query("SELECT COUNT(title) AS num FROM events")
	
	
	index = 1
	@index =+ $count
	index = @index

	@results = client.query("SELECT * FROM events where eventId = " + index.to_s + "")
	@results2 = client.query("SELECT * FROM times where timeId = " + index.to_s + "")
	@results3 = client.query("SELECT * FROM venues where venueId = " + index.to_s + "")
	$count += 1

  end
  
  def edit
	@event = Event.find(params[:id])
  end
  
  def create
	#render plain: params[:event].inspect
	@event = Event.new(event_params)
	
	if @event.save
		redirect_to @event
	else
		render 'new'
	end
  end
  
  def update
    @event = Event.find(params[:id])
 
    if @event.update(event_params)
      redirect_to @event
    else
      render 'edit'
    end
  end
  
  def destroy
	@event = Event.find(params[:id])
	@event.destroy
	
	redirect_to events_path
  end
  
  private
	def event_params
		params.require(:event).permit(:title, :subtitle, :category, :start_date, :end_date, :start_time, :end_time, :venue_name, :address, :city, :province, :description, :picture, :video, :ticket, :price, :workflow)
	end
end
