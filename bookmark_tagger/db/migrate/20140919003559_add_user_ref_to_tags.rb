class AddUserRefToTags < ActiveRecord::Migration
  def change
    add_reference :tags, :user, index: true
  end
end
