require 'sinatra/base'
require_relative './lib/controller'

class CallMyBluff < Sinatra::Base

  enable :sessions

  get '/' do
    'call my bluff'
    # erb :index
  end

  run! if app_file == $0
end
