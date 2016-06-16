get '/organizations/new' do
  @organization = Organization.new
  erb :'/organizations/new'
end

post '/organizations' do
  @organization = Organization.new(params[:organization])
  if @organization.save
    redirect '/organizations'
  else
    erb :'/organizations/new'
  end
end

get '/organizations' do
  @organizations = Organization.all
  erb :'/organizations/index'
end

get '/organizations/:id' do
  @organization = Organization.find(params[:id])
  erb :'/organizations/show'
end

get '/organizations/:id/edit' do
  erb :'/organizations/edit'
end

patch '/organizations/:id' do
  redirect '/organizations/:id'
end

delete '/organizations/:id' do
  # redirect '/organizations'
end


