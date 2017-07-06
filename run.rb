require './lib/game.rb'
require './lib/word.rb'

game = Game.new(Word.new, Word.new, Word.new)

puts game.list_options

selection = gets.chomp

puts game.guess(selection)
