require 'sinatra'
require 'shotgun'

get '/' do
  "Hello World"
end

get '/rude_pictures' do
  "Sucker!"
end

get '/random-cat' do
  @name = ["Amigo","Oscar","Viking"].sample
  erb(:index)
end

get '/cat-form' do
  erb(:cat_form)
end

post '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end
