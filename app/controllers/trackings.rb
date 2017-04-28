get '/trackings/new' do
if current_user
  @event_selection = build_event_selection("")
  erb :'trackings/new'
else
  @errors = ["Please Login to add new trackings"]
  erb :'sessions/new'
end

end

post '/trackings' do
  event = Event.find_by(name: params["event"])
  @tracking = Tracking.new(order_cost: params["order_cost"], num_of_tix: params["num_of_tix"], event: event, user: current_user)
  if @tracking.save
  	redirect '/'
  else
  	@errors = @tracking
  	.errors.full_messages
  	erb :"trackings/new"
  end
  
end
