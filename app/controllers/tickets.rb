get '/tickets/new' do
if current_user
  @event_selection = build_event_selection("")
  erb :'tickets/new'
else
  @errors = ["Please Login to add new tickets"]
  erb :'sessions/new'
end

end

post '/tickets' do
  p params
  event = Event.find_by name: params["event"]
  new_ticket = Ticket.new(initial_price: params["initial_price"], event_id: event.id, user_id: current_user.id)
  new_ticket.save
  redirect '/'
end
