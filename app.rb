require 'sinatra'
require "sinatra/reloader" if development?

get '/' do
  "Hello World"
end

get '/secret' do
  "I'm Batman!"
end

get '/adam' do
  "Hi Matt"
end

get '/matt' do
  "Hi Adam"
end

get '/random-cat' do
  @name = ["Batman", "Darkseid", "Hulk"].sample
  erb(:index)
end

get '/form' do
  p params
  erb(:form)
end

post '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end





# http://localhost:4567
