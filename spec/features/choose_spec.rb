# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors
feature 'Play RPS' do
  scenario 'select rock' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content 'You have selected Rock'
  end
end
