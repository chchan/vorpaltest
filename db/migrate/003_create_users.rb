class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.integer :userId
      t.string :userName
      t.string :userPassword
      t.string :firstName
      t.string :lastName
      t.string :email
      t.string :address
      t.boolean :isAdmin
      t.boolean :isActive

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
