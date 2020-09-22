# frozen_string_literal: true
require 'pg'
class Bookmark
  BOOKMARKS = ['www.google.com', 'www.reddit.com', 'www.youtube.com'].freeze

  def self.all
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'bookmark_manager_test')
    else
      connection = PG.connect(dbname: 'bookmark_manager')#when we get an error on yours its an underscore
    end
    table = connection.exec('SELECT * FROM bookmarks')
    table.map {|bookmark| bookmark['url']}
  end

  
end
