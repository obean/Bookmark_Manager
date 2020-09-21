feature 'viewing bookmarks' do
  scenario '/bookmarks shows a list of bookmarks' do
    visit('/bookmarks')
    expect(page).to have_content "www.google.com"
    expect(page).to have_content "www.youtube.com"
    expect(page).to have_content "www.reddit.com"
  end
end