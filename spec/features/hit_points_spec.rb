# frozen_string_literal: true

feature 'hit points' do
  scenario 'can view player 2 hit points' do
    sign_in_and_play
    expect(page).to have_content 'Pat: 12 lives'
  end
end
