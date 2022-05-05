
feature 'Switch turns' do
  context 'can see the turn' do
    scenario 'at the start of the game' do
      sign_in_and_play
      expect(page).to have_content "Slava's turn"
    end

    scenario 'after Player 1 attacks' do
      sign_in_and_play
      click_link 'Attack'
      click_link 'OK'
      expect(page).not_to have_content "Slava's turn"
      expect(page).to have_content "Tom's turn"
    end
  end
end
