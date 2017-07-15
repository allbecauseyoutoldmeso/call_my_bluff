# require 'controller'
#
# describe Controller do
#
#   subject(:controller) { described_class.new }
#
#   describe '#new_game' do
#     it 'initiates a game' do
#       expect(controller.new_game).to be_a(Game)
#     end
#   end
#
#   describe '#play_again_option' do
#     it 'allows player to play a new game' do
#       allow(controller).to receive(:answer).and_return('y')
#       expect(controller).to receive(:run_game)
#       controller.play_again_option
#     end
#   end
#
# end
