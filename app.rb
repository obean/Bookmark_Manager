# frozen_string_literal: true

require 'sinatra/base'
require_relative './lib/bookmark'

class BookmarkManager < Sinatra::Base
  get '/bookmarks' do
    p ENV
    erb(:bookmark)
  end

  run! if app_file == $PROGRAM_NAME
end