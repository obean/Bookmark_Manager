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

  post '/delete_bookmark' do
    Bookmark.delete_bookmark(params[:delete_url])
    redirect "/bookmarks"
  end

  post '/update_bookmark' do
    Bookmark.update(params[:old_url], params[:new_url])
    redirect "/bookmarks"
  end

  run! if app_file == $PROGRAM_NAME
end