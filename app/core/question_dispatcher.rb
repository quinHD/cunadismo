class QuestionDispatcher
  attr_reader :game

  def initialize(game)
    @game = game
  end

  def next
    #available_sentences = Sentence.all - game.sentences
    available_sentences = Sentence.all
    game.questions.create(sentence: available_sentences.sample)
  end
end