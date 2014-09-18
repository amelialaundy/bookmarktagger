class Bookmark < ActiveRecord::Base
  has_many :tags, through: :tagged_bookmarks, inverse_of: :bookmarks
  has_many :tagged_bookmarks
end
