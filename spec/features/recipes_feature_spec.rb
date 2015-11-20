require 'rails_helper'

feature 'recipes' do
  context 'no recipes have been added' do
    scenario 'should display a prompt to add a recipe' do
      visit '/recipes'
      expect(page).to have_content 'No recipes yet'
      expect(page).to have_link 'Add a recipe'
    end
  end
end
