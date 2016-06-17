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
  @project = Project.find(params[:id])
  erb :'/projects/edit'
end

put '/projects/:id' do
  @project = Project.find(params[:id])
  @project.update(params[:project])
  redirect "/projects/#{@project.id}"
end

delete '/projects/:id' do
  # redirect '/projects'
end
