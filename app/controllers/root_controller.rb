class RootController < Sinatra::Base
  enable :sessions

  get '/' do
    session[:whatever] = "whatever, guy"
  end

  get '/test' do
    session[:whatever]
  end
end
