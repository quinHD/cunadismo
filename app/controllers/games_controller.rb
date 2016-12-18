class GamesController < ApplicationController
  def new
    @player = Player.new
  end

  def create
    player = Player.where(nickname: "Player").first_or_create(nickname: "Player")
    game = Game.create(player: player)
    game.questions.destroy_all
    redirect_to "/players/1/games/#{game.id}/intro"
  end

  def show
    @player = Player.find(params[:player_id])
    @game = @player.games.find(params[:id])
  end

  def intro
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
