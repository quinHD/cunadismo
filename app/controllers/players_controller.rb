class PlayersController < ApplicationController
  def new
    @player = Player.new
  end

  def create
    player = Player.where(nickname: params[:nickname]).first_or_create(nickname: params[:nickname])
    game = player.games.create
    redirect_to player_game_path(player, game)
  end
end
