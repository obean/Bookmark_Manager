require 'bookmark'

describe Bookmark do
  it 'returns the bookmarks' do
    setup_test_database
    expect(Bookmark.all).to include 'http://www.makersacademy.com', 'http://www.destroyallsoftware.com', 'http://www.google.com'
  end
end

describe '.add_bookmark' do
  it 'adds a new bookmark to the array' do
    setup_test_database
    Bookmark.add_bookmark('http://www.github.com')
    expect(Bookmark.all).to include 'http://www.github.com'
  end
end
