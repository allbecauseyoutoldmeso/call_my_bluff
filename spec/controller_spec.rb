require 'controller'

describe Controller do

  subject(:controller) { described_class.new }

  describe '#new_game' do
    it 'initiates a game' do
      expect(controller.new_game).to be_a(Game)
    end
  end

end
