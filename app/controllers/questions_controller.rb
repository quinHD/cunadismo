class QuestionsController < ApplicationController
  def new
    player = Player.find(params[:player_id])
    game = Game.find(params[:game_id])
    question = QuestionDispatcher.new(game).next

    render json: question.id == nil ? nil : question.sentence
  end
end
