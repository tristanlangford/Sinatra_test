require 'sinatra'
require 'shotgun'

set :session_secret, 'super secret'

get "/" do
  "hello"
end

get "/pizza" do
  "I like pizza with pepperoni"
end

get "/cat" do
  @names = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end
