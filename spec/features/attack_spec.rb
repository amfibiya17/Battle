
feature 'Attacking' do

  scenario 'attack Player 2 and get confirmation' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content 'Slava attacked Tom'
  end

  scenario 'reduce Player 2 points by 10' do
    sign_in_and_play
    click_link 'Attack'
    click_link 'OK'
    expect(page).not_to have_content 'Tom: 100 points'
    expect(page).to have_content 'Tom: 90 points'
  end

end
