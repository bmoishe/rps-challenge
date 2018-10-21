feature 'Select mode' do
  scenario '1 player' do
    select_btb
    sign_in_and_play_1p
    expect(page).to have_content 'Select a weapon'
  end
end


feature 'Gameplay' do
  scenario 'Show the selectd Rock' do
    select_btb
    sign_in_and_play_1p
    click_button 'Rock'
    expect(page).to have_content 'Bob has selected Rock'
  end
end
