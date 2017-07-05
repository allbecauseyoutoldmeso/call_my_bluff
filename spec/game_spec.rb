require 'game'

describe Game do

  let(:word_1) { double :word, spelling: 'dinghy', definition: 'a small boat for recreation or racing.' }
  let(:word_2) { double :word, spelling: 'chichi', definition: 'attempting stylish elegance.' }
  let(:word_3) { double :word, spelling: 'teacup', definition: 'a cup from which tea is drunk.' }

  subject(:game) { described_class.new(word_1, word_2, word_3) }

  describe 'words' do
    it 'returns an array of three word objects' do
      expect(game.words).to be_a(Array)
      expect(game.words.length).to eq 3
    end
  end



end
