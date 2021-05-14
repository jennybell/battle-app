# frozen_string_literal: true

feature 'Player 1 can attack player 2' do
  scenario 'Player 2 is attacked and there is a confirmation' do
    sign_in_and_play
    click_link 'ATTACK'
    expect(page).to have_content 'Dennis attacked Pat!'
  end

  feature 'attacking' do
    scenario 'reduce Player 2 lives by 1' do
      sign_in_and_play
      click_link 'ATTACK'
      click_link 'OK'
      expect(page).not_to have_content 'Pat: 12 lives'
      expect(page).to have_content 'Pat: 11 lives'
    end
  end
end
