# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game
feature 'Register name' do
  scenario 'submit name' do
    visit('/')
    fill_in :enter_name, with: 'Bob'
    click_button 'Submit'
    expect(page).to have_content 'Welecome Bob!'
  end
end
