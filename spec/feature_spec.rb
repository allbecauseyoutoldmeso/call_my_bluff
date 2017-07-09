feature 'playing Call My Bluff' do

  scenario 'homepage displays title' do
    visit '/'
    expect(page).to have_content 'call my bluff'
  end

end
