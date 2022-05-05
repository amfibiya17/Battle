
feature 'Enter names' do
  scenario 'submitting names' do
    sign_in_and_play
    # save_and_open_page
    expect(page).to have_content 'Slava vs. Tom'
  end
end

feature 'Hit points`' do
  scenario 'see Player 2 Hit Points' do
    visit('/')
    sign_in_and_play
    # save_and_open_page
    expect(page).to have_content 'Tom: 100 points'
  end
end
