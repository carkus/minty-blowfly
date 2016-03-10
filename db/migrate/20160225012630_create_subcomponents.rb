class CreateSubcomponents < ActiveRecord::Migration
  def change
    create_table :subcomponents do |t|
      t.string :behaviour
      t.string :refid
      t.integer :ownerid
      t.string :editorid
      t.string :followerid
      t.integer :views
      t.boolean :viewable
      t.boolean :active
      t.string :title
      t.text :subs
      t.text :description
      t.string :titleimage
      t.text :meat

      t.timestamps null: false
    end
  end
end
