class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :password
      t.string :salt
      t.string :refid
      t.integer :active
      t.string :follows
      t.string :text
      t.string :tagline
      t.text :status
      t.string :userimage
      t.string :titleimage

      t.timestamps null: false
    end
  end
end
