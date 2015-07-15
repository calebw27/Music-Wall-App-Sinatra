# Homepage (Root path)
get '/' do
  erb :index
end

get '/songs' do
  @songs = Song.all
  erb :songs
end

post '/songs' do
  Song.create(params)
  redirect '/'
end

not_found do
  "Not found! Go Away"
end