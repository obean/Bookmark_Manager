# frozen_string_literal: true

require 'sinatra/base'
require_relative './lib/bookmark'
class BookmarkManager < Sinatra::Base
  get '/bookmarks' do
    @bookmark = Bookmark.new
    erb(:bookmark)
  end

  run! if app_file == $PROGRAM_NAME
end
