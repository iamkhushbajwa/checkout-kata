require "sinatra"
require_relative "./lib/checkout"

enable :sessions

set :session_secret, 'Guruji'

get '/' do
  if session[:basket]
    temp_basket = session[:basket].clone
    @total = Checkout.new(temp_basket).total
  end
  p session[:basket]
  erb :index
end

post '/' do
  session[:basket] = [] if !session[:basket]
  session[:basket] << params[:item].to_sym
  redirect '/'
end

get '/new_customer' do
  session[:basket] = nil
  redirect '/'
end