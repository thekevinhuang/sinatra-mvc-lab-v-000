require_relative 'config/environment'
require_relative 'models/piglatinizer'
require 'pry'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    pigger = PigLatinizer.new
    @pig_text = pigger.to_pig_latin(params[:user_phrase])
    erb :pig_result
  end
end
