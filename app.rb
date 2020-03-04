# Battle!
require "sinatra/base"

class Battle < Sinatra::Base

get "/" do
  "WELCOME TO THE LOL BATTLE"
end


# start the server if ruby file executed directly
  run! if app_file == $0
end
