# frozen_string_literal: true

require 'sinatra/base'
require_relative './lib/bookmark'

class BookmarkManager < Sinatra::Base
  get '/bookmarks' do
    erb(:bookmark)
  end

  post '/add_bookmark' do
    Bookmark.add_bookmark(params[:url])
    redirect "/bookmarks"
  end
  run! if app_file == $PROGRAM_NAME
end