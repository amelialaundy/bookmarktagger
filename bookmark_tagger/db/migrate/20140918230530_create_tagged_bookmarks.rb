class CreateTaggedBookmarks < ActiveRecord::Migration
  def change
    create_table :tagged_bookmarks do |t|
      t.references :bookmark, index: true
      t.references :tag, index: true

      t.timestamps
    end
  end
end
