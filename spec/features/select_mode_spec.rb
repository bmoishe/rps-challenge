feature 'Select mode' do
  scenario 'Select Beat The Bot' do
    select_btb
    sign_in_and_play
    expect(page).to have_content 'Select a weapon'
  end
end

# feature 'Select mode' do
#   scenario 'Select Vs' do
#     select_vs
#       sign_in_and_play
#     expect(page).to have_content 'Select a weapon'
#   end
# end
