class Bookmark < ActiveRecord::Base
  has_many :tags, through: :tagged_bookmarks
end
