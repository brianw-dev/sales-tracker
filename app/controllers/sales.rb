get '/sales/new' do
if current_user
  @event_selection = build_event_selection("")
  erb :'sales/new'
else
  @errors = ["Please Login to add new sales"]
  erb :'sessions/new'
end

end

post '/sales' do
  event = Event.find_by(name: params["event"])
  @sale = Sale.new(price: params["price"], num_of_tix: params["num_of_tix"], event: event, user: current_user)
  if @sale.save
  	redirect '/'
  else
  	@errors = @sale
  	.errors.full_messages
  	erb :"sales/new"
  end
  
end

