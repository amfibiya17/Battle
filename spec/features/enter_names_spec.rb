
feature 'Enter names' do
  scenario 'submitting names' do
    sign_in_and_play
    expect(page).to have_content 'Slava vs. Tom'
  end
end

feature 'Hit points' do
  scenario 'see Player 2 Hit Points' do
    sign_in_and_play
    expect(page).to have_content 'Tom: 100 points'
  end
end

feature 'Attacking' do
  scenario 'attack Player 2 and get confirmation' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content 'Slava attacked Tom'
  end
end