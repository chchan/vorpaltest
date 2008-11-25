class CreateCreditCards < ActiveRecord::Migration
  def self.up
    create_table :credit_cards do |t|
      t.integer :cardNumber
      t.string :cardName
      t.string :cardAddress
      t.string :cardVendor
      t.integer :cardSecCode
      t.string :cardExpiration

      t.timestamps
    end
  end

  def self.down
    drop_table :credit_cards
  end
end
