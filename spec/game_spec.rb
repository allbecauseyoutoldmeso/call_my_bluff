require 'game'

describe Game do

  let(:word_1) { double :word, spelling: 'dinghy', definition: 'a small boat for recreation or racing.' }
  let(:word_2) { double :word, spelling: 'chichi', definition: 'attempting stylish elegance.' }
  let(:word_3) { double :word, spelling: 'teacup', definition: 'a cup from which tea is drunk.' }

  subject(:game) { described_class.new(word_1, word_2, word_3) }

  describe 'word' do
    it 'returns the game word' do
      expect(game.word).to eq 'dinghy'
    end
  end

  describe 'correct_definition' do
    it 'returns the definition of the game word' do
      expect(game.correct_definition).to eq 'a small boat for recreation or racing.'
    end
  end

  describe 'incorrect_definition_1' do
    it 'returns an incorrect definition' do
      expect(game.incorrect_definition_1).to eq 'attempting stylish elegance.'
    end
  end

  describe 'incorrect_definition_2' do
    it 'returns an incorrect definition' do
      expect(game.incorrect_definition_2).to eq 'a cup from which tea is drunk.'
    end
  end



end
