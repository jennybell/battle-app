feature 'switches_turns' do
scenario 'starts as player 1s turn' do
  sign_in_and_play
  expect(page).to have_content 'Go Dennis!'
end

scenario 'it is player 2s turn next' do
  sign_in_and_play
  click_link 'ATTACK'
  click_link 'OK'
  expect(page).to have_content 'Go Pat!'
end
end