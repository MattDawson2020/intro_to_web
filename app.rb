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

get '/cat' do
  erb(:index)
end

# http://localhost:4567