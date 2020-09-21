
class Bookmark

  BOOKMARKS = ["www.google.com", "www.reddit.com", "www.youtube.com"]

  def all
    BOOKMARKS.join('\n')
  end
end