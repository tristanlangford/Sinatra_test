require 'sinatra'
require 'shotgun'

set :session_secret, 'super secret'

get "/" do
  "hello"
end

get "/pizza" do
  "I like pizza with pepperoni"
end

get "/random-cat" do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

get "/named-cat" do
  @name = params[:name]
  erb(:index)
end
