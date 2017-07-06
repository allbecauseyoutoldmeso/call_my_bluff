require './lib/game.rb'
require './lib/word.rb'

game = Game.new(Word.new, Word.new, Word.new)

puts "what is the meaning of the word #{game.word}"

puts "is it:"

puts "1. #{game.options[0]}"
puts "2. #{game.options[1]}"
puts "3. #{game.options[2]}"

selection = gets.chomp

# puts game.guess(selection.to_i)
