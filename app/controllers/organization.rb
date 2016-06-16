get '/organizations/new' do
  erb :'/organizations/new'
end

post '/organizations' do
  # redirect '/users'
end

get '/organizations' do
end

get '/organizations/:id' do
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


