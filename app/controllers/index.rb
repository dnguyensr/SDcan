get '/' do
  @projects = Project.all.last(3)
  erb :index
end

get '/blog' do
  erb :blog
end
