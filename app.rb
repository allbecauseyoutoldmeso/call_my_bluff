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

  get '/game/:guess' do
    @game = session[:game]
    @guess = params[:guess]
    erb :result
  end

  run! if app_file == $0
end
