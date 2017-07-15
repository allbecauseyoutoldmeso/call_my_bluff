require 'spec_helpers'

feature 'playing Call My Bluff' do

  scenario 'homepage displays title' do
    visit '/'
    expect(page).to have_content 'call my bluff'
  end

  # scenario 'user can start a new game' do
  #   visit '/'
  #   click_button 'play now!'
  #   expect(current_path).to eq '/game'
  # end

  scenario 'game page dispays a word' do
    start_testgame
    expect(page).to have_content "what is the meaning of the word 'teacup'?"
  end

  scenario 'game page displays correct definition and two decoy definitions' do
    start_testgame
    expect(page).to have_content 'a cup from which tea is drunk.'
    expect(page).to have_content 'a small boat for recreation or racing.'
    expect(page).to have_content 'attempting stylish elegance.'
  end

  scenario 'win message is displayed if user selects correct definition' do
    play_testgame_with('a cup from which tea is drunk')
    expect(page).to have_content "correct! 'teacup' means 'a cup from which tea is drunk.'"
  end

  scenario 'lose message is displayed if user selects wrong definition' do
    play_testgame_with('attempting stylish elegance.')
    expect(page).to have_content "wrong answer. 'teacup' means 'a cup from which tea is drunk.'"
  end

end
