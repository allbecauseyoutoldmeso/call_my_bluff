require 'game'

describe Game do

  let(:word_1) { double :word, spelling: 'dinghy', definition: 'a small boat for recreation or racing.' }
  let(:word_2) { double :word, spelling: 'chichi', definition: 'attempting stylish elegance.' }
  let(:word_3) { double :word, spelling: 'teacup', definition: 'a cup from which tea is drunk.' }

  subject(:game) { described_class.new(word_1, word_2, word_3) }

  describe '#word' do
    it 'returns the game word' do
      expect(game.word).to eq 'dinghy'
    end
  end

  describe '#correct_definition' do
    it 'returns the definition of the game word' do
      expect(game.correct_definition).to eq 'a small boat for recreation or racing.'
    end
  end

  describe '#options' do
    it 'returns an array of definitions in no particular order' do
      expect(game.options).to be_a(Array)
    end
  end

  describe '#guess' do
    it 'returns a win or lose message' do
      expect(['correct!', "wrong answer. 'dinghy' means 'a small boat for recreation or racing.'"]).to include(game.guess(1))
    end
  end

  describe '#play' do
    it 'takes user input and calls #guess with the selected option' do
      allow(game).to receive(:selection).and_return('1')
      expect(game).to receive(:guess).with('1')
      game.play
    end
  end

end
