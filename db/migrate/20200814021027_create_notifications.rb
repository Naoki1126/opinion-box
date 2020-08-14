class CreateNotifications < ActiveRecord::Migration[5.2]
  def change
    create_table :notifications do |t|
      t.integer :visitor_id, null: false
      t.integer :visited_id, null: false
      t.integer :connment_id
      t.integer :post_id
      t.integer :favorite_id
      t.string :action, default: '', null: false
      t.boolean :checked, default: false, null: false
      t.timestamps
    end
    add_index :notifications, :visitor_id
    add_index :notifications, :visited_id
    add_index :notifications, :connment_id
    add_index :notifications, :post_id
    add_index :notifications, :favorite_id
  end
end
