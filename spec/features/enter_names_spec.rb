# frozen_string_literal: true

feature 'Enter names' do
  scenario 'can enter player names and render a view' do
    sign_in_and_play
    expect(page).to have_content 'Dennis vs. Pat'
  end
end
