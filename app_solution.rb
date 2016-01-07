require 'sinatra'
require 'sinatra/reloader'

num_bottles = 100

get '/' do
  num_bottles -= 1
  "#{num_bottles} bottles of beer on the wall <br> <a href='/'>Take One Down</a>"
end

get '/:num_bottles' do
  "#{params[:num_bottles]} Bottles of beer on the wall"
end

get '/0' do
  "No Bottles of beer on the wall"
end


# get "/" do
#   "99 bottles of beer on the wall. <a href='/bottles/98'>Take one Down</a>"
# end

# get "/bottles/:num" do
#   num = params[:num].to_i
#   if num == 0
#     "No bottles of beer on the wall. <a href='/bottles/99'>Start Over</a>"
#   else
#     "#{num} bottles of beer on the wall. <a href='/bottles/#{num-1}'>Take one Down</a>"
#   end
# end

