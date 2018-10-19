def sign_in_and_play
  visit('/welcome')
  fill_in :enter_name, with: 'Bob'
  click_button 'Submit'
end

def select_btb
  visit('/')
  click_button 'Beat The Bot'
end

def select_vs
  visit('/')
  click_button 'Vs'
end
