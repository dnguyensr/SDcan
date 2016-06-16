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
  @users = User.all
  erb :'users/index'
end

# get '/users/:id' do
#   #can use current_user to handle this as well if we use users/show or something instead
#   @user = User.find(params[:id])
#   erb :'users/show'
# end


get '/users/login' do
  erb :'users/login'
end

post '/users/login' do
  @auth_user = User.authenticate(params[:user][:email], params[:user][:password])
  if @auth_user
    session[:user_id] = @auth_user.id
    redirect '/'
  else
    @user = User.new
    status 422
    @errors = @user.errors.full_messages
    erb :'users/login'
  end
end

get '/users/logout' do
  session[:user_id] = nil
  redirect '/'
end

