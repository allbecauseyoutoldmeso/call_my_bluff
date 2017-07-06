require './lib/game.rb'

game = Game.new(Word.new, Word.new, Word.new)

puts "what is the meaning of the word #{game.word}"
