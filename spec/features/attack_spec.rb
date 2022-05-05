
feature 'Attacking' do

  scenario 'attack Player 2 and get confirmation' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content 'Slava attacked Tom'
  end

  scenario 'attack Player 1 and get confirmation' do
    sign_in_and_play
    click_link 'Attack'
    click_link 'OK'
    click_link 'Attack'
    expect(page).to have_content 'Tom attacked Slava'
  end

  scenario 'reduce Player 2 points by 10 points' do
    sign_in_and_play
    click_link 'Attack'
    click_link 'OK'
    expect(page).not_to have_content 'Tom: 100 points'
    expect(page).to have_content 'Tom: 90 points'
  end

  scenario 'reduce Player 1 HP by 10 points' do
    sign_in_and_play
    click_link 'Attack'
    click_link 'OK'
    click_link 'Attack'
    click_link 'OK'
    expect(page).not_to have_content 'Slava: 100 points'
    expect(page).to have_content 'Slava: 90 points'
  end

end
