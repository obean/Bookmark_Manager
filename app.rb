require 'sinatra/base'
require 'bookmark'
class BookmarkManager < Sinatra::Base 

  get '/bookmarks' do 
    @bookmark = Bookmark.new
    erb(:bookmark)
  end 


  run! if app_file == $0

end 