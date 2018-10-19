# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors
feature 'Play RPS' do
  scenario 'select rock' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content 'Bob has selected Rock'
    expect(page).to have_content 'Bot has selected'
  end
end
