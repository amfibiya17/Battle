require 'sinatra/base'
require 'sinatra/reloader'
require_relative 'lib/player'
require_relative 'lib/game'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :play
  end
  
  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end
  
  get '/attack' do
    @game = $game
    @game.attack(@game.opponent_of(@game.current_turn))
    @game.switch_turns
    erb :attack
  end

  post '/switch-turns' do
    $game.switch_turns
    redirect('/play')
  end
end