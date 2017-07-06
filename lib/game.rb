class Game

  attr_reader :word, :correct_definition, :incorrect_definition_1, :incorrect_definition_2

  def initialize(word_1, word_2, word_3)
    @word = word_1.spelling
    @correct_definition = word_1.definition
    @incorrect_definition_1 = word_2.definition
    @incorrect_definition_2 = word_3.definition
  end

end
