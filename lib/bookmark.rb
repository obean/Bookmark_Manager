# frozen_string_literal: true
require 'pg'
class Bookmark


  def self.all
    table = set_environment.exec('SELECT * FROM bookmarks')
    table.map {|bookmark| bookmark['url']}
  end

  def self.add_bookmark(url)
    set_environment.exec("INSERT INTO bookmarks (url) VALUES ('#{url}');")
  end

  def self.delete_bookmark(website)
    set_environment.exec("DELETE FROM bookmarks WHERE url LIKE '%#{website}%'")
  end
  
  def self.set_environment
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'bookmark_manager_test')
    else
      connection = PG.connect(dbname: 'bookmark-manager')#when we get an error on yours its an underscore
    end
  end

end
