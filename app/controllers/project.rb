get '/projects/new' do
@project = Project.new
  erb :'/projects/new'
end

post '/projects' do
  @project = Project.new(params[:project])
  if @project.save
    redirect '/projects'
  else
    erb :'/projects/new'
  end
end

get '/projects' do
  @projects = Project.all
  erb :'/projects/index'
end

get '/projects/:id' do
  @project = Project.find(params[:id])
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
