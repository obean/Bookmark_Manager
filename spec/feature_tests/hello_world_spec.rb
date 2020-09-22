# frozen_string_literal: true

require 'pg'

feature 'viewing bookmarks' do
  scenario '/bookmarks shows a list of bookmarks' do

      visit('/bookmarks')

      expect(page).to have_content 'http://www.makersacademy.com'
      expect(page).to have_content 'http://www.destroyallsoftware.com'
      expect(page).to have_content 'http://www.google.com'
  end
end

feature 'add bookmarks' do
  scenario 'adding a new bookmark' do
    visit '/bookmarks'
    fill_in 'url', with: 'http//www.github.com'
    click_button 'Add'
    expect(page).to have_content 'http//www.github.com'
  end
end

feature 'delete bookmarks' do
  scenario "deleting a bookmark" do
    visit '/bookmarks' 
    fill_in 'delete_url', with: "google"
    click_button 'Delete'
    expect(page).not_to have_content "http://www.google.com"
  end
end
