get '/users/new' do
  if request.xhr?
    erb :'users/new', layout: false
  else
    erb :'users/new'
  end
end

post '/users' do
  @user = User.new(params[:user])

  if @user.save
    login (@user)
    redirect '/'
  else
    @errors = @user.errors.full_messages
    erb :'users/new'
  end
end
