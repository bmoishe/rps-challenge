# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors
feature 'Play RPS' do
  scenario '1 player selects Rock' do
    sign_in_and_play_1p
    click_button "Rock"
    expect(page).to have_content 'Bob has selected Rock'
  end
end

feature 'Play RPS Vs - Rock beats scissors' do
  scenario 'Rock beats scissors' do
    sign_in_and_play_vs
    click_button 'Rock'
    click_button 'Scissors'
    expect(page).to have_content 'Bob wins'
  end
end

feature 'Play RPS Vs - Paper beats rock' do
  scenario 'Paper beats rock' do
    sign_in_and_play_vs
    click_button 'Paper'
    click_button 'Rock'
    expect(page).to have_content 'Bob wins'
  end
end

feature 'Play RPS Vs - Scissors beat paper' do
  scenario 'Scissors beat paper' do
    sign_in_and_play_vs
    click_button 'Scissors'
    click_button 'Paper'
    expect(page).to have_content 'Bob wins'
  end
end

feature 'Play RPS Vs - The same draws' do
  scenario 'The same draws' do
    sign_in_and_play_vs
    click_button 'Scissors'
    click_button 'Scissors'
    expect(page).to have_content 'Bob wins'
  end
end
