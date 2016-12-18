class PlayersController < ApplicationController
  def new
    @player = Player.new
  end

  def create
    player = Player.where(nickname: "Player").first_or_create(nickname: "Player")
    game = player.games.create
    redirect_to player_game_path(player, game)
  end
end
