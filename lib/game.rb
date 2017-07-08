class Game

  attr_reader :word, :correct_definition, :incorrect_definition_1, :incorrect_definition_2, :options

  def initialize(word_1, word_2, word_3)
    @word = word_1.spelling
    @correct_definition = word_1.definition
    @incorrect_definition_1 = word_2.definition
    @incorrect_definition_2 = word_3.definition
    @options = [correct_definition, incorrect_definition_1, incorrect_definition_2].shuffle
  end

  def list_options
    "what is the meaning of the word '#{word}'?\nis it:\n1. #{options[0]}\n2. #{options[1]}\n3. #{options[2]}"
  end

  def guess(number)
    options[(number.to_i)-1] == correct_definition ? 'correct!' : "wrong answer. '#{word}' means '#{correct_definition}'"
  end

  def play
    puts list_options
    puts guess(selection)
  end

  def selection
    gets.chomp
  end

end
