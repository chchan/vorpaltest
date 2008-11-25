class CreateItems < ActiveRecord::Migration
  def self.up
    create_table :items do |t|
      t.integer :itemId
      t.string :itemName
      t.integer :itemPrice
      t.string :itemDescription
      t.string :itemTags

      t.timestamps
    end
  end

  def self.down
    drop_table :items
  end
end
