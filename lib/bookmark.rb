# frozen_string_literal: true

class Bookmark
  BOOKMARKS = ['www.google.com', 'www.reddit.com', 'www.youtube.com'].freeze

  def all
    BOOKMARKS.join('\n')
  end
end
