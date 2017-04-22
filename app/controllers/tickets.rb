get '/tickets/new' do
  erb :'tickets/new'
end

post '/tickets' do
  @ticket = Ticket.new(params[:ticket])
end
