
feature 'Hit points' do
  scenario 'see Player 2 Hit Points' do
    sign_in_and_play
    expect(page).to have_content 'Tom: 100 points'
  end

  scenario 'see Player 1 Hit Points' do
    sign_in_and_play
    expect(page).to have_content 'Slava: 100 points'
  end
end
