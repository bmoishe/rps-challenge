# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game
feature 'Register name' do
  scenario 'submit name' do
  sign_in_and_play_1p
    expect(page).to have_content 'Welcome Bob!'
  end
end
