class Tag < ActiveRecord::Base
  has_many :bookmarks, through :tagged_bookmarks
end
