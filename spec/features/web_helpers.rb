def sign_in_and_play_vs
  visit('/')
  click_button "Vs"
  fill_in :enter_name, with: 'Bob'
  fill_in :enter_name2, with: 'Dave'
  click_button "Submit"
end

def sign_in_and_play_1p
  visit('/')
  click_button "1 player"
  fill_in :enter_name, with: 'Bob'
  click_button "Submit"
end

def select_btb
  visit('/')
  click_button '1 player'
end

def select_vs
  visit('/')
  click_button 'Vs'
end
