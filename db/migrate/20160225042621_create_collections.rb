class CreateCollections < ActiveRecord::Migration
  def change
    create_table :collections do |t|
      t.string :title
      t.integer :ownerid
      t.text :description

      t.timestamps null: false
    end
  end
end
