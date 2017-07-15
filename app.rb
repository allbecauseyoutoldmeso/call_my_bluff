require 'sinatra/base'
require_relative './lib/game'
require_relative './lib/word'

class CallMyBluff < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/game/new' do
    session[:game] = Game.new(Word.new, Word.new, Word.new)
    redirect '/game'
  end

  get '/game' do
    @game = session[:game]
    erb :game
  end

  get '/game/:definition' do
    @game = session[:game]
    @definition = params[:definition]
    erb :result
  end

  run! if app_file == $0
end
