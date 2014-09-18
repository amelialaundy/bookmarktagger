class Tag < ActiveRecord::Base
  has_many :bookmarks, through: :tagged_bookmarks, inverse_of: :tags
  has_many :tagged_bookmarks
end
