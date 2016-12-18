class GamesController < ApplicationController
  def new
    @player = Player.new
  end

  def create
    player = Player.where(nickname: params[:nickname]).first_or_create(nickname: params[:nickname])
    game = Game.create(player: player)
    redirect_to game
  end

  def show
    @player = Player.find(params[:player_id])
    @game = @player.games.find(params[:id])
  end

  def mercy_success
    @player = Player.find(params[:player_id])
    @game = @player.games.find(params[:id])
  end

  def mercy_failure
    @player = Player.find(params[:player_id])
    @game = @player.games.find(params[:id])
  end

  def punishment_success
    @player = Player.find(params[:player_id])
    @game = @player.games.find(params[:id])
  end

  def punishment_failure
    @player = Player.find(params[:player_id])
    @game = @player.games.find(params[:id])
  end

  def success
    @player = Player.find(params[:player_id])
    @game = @player.games.find(params[:id])
  end

  def failure
    @player = Player.find(params[:player_id])
    @game = @player.games.find(params[:id])
  end
end
