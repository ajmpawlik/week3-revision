require 'sinatra'

get '/' do
  "Hello World"
end

get '/secret' do
  "This is a secret site ha! Lalalala"
end

get '/random-cat' do
@name = ["Amigo", "Oscar", "Viking"].sample
@last_name = %w(Purr Miau Fffuuurr).sample
erb(:index)
end

get '/named-cat' do
  p params
  @name = params[:lalala]#["Amigo", "Oscar", "Viking"].sample
  @last_name = params[:last_name]#%w(Purr Miau Fffuuurr).sample
  erb(:index)
end

get 'form-pill' do
erb(:formpill)
end
