get '/users/new' do
  erb :'/users/new'
end

post '/users' do
  @user = User.new(params[:user])
  if @user.save
    session[:user_id] = @user.id
    redirect '/'
  else
    status 422
    @errors = @user.errors.full_messages
    erb :'/users/new'
  end
end

get '/users' do
end

get '/users/login' do
  erb :'users/login'
end

post '/users/login' do
  erb :'users/login'
end
delete '/users/logout' do
end

