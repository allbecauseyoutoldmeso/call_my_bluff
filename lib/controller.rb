require './lib/game.rb'
require './lib/word.rb'

class Controller

  def run_game
    new_game.play
    play_again_option
  end

  def new_game
    Game.new(Word.new, Word.new, Word.new)
  end

  def play_again_option
    puts 'play again? y/n'
    answer == 'y' ? run_game : exit
  end

  def answer
    gets.chomp.downcase
  end

end
