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

describe '.delete_bookmark' do 
  it "deletes a bookmark from the array" do
    setup_test_database
    Bookmark.delete_bookmark("google")
    expect(Bookmark.all).not_to include "http://www.google.com"
  end
end

describe '.update_bookmark' do
  it 'changes the bookmark url' do
    setup_test_database
    Bookmark.update("google", "http://www.bbc.co.uk")
    expect(Bookmark.all).not_to include "http://www.google.com"
    expect(Bookmark.all).to include "http://www.bbc.co.uk"
  end
end



