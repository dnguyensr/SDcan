get '/projects/new' do
  erb :'/projects/new'
end

post '/projects' do
  # redirect '/projects'
end

get '/projects' do
  # all projects
  erb :'/projects/index'
end

get '/projects/:id' do
  erb :'/projects/show'
end

get '/projects/:id/edit' do
  erb :'/projects/edit'
end

patch '/projects/:id' do
  redirect '/projects/:id'
end

delete '/projects/:id' do
  # redirect '/projects'
end
