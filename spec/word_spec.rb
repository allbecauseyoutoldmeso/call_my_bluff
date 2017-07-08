require 'word'

describe Word do

  subject(:word) { described_class.new }

  describe '#spelling' do
    it 'returns a string' do
      expect(word.spelling).to be_a(String)
    end
    it '#returns a downcased string' do
      expect(word.spelling.downcase).to eq word.spelling
    end
  end

  describe '#definition' do
    it 'returns a string' do
      expect(word.definition).to be_a(String)
    end
    it 'returns a downcased string' do
      expect(word.definition.downcase).to eq word.definition
    end
  end

end
