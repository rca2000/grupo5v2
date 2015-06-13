class CreateMenuDetails < ActiveRecord::Migration
  def change
    create_table :menu_details do |t|
      t.integer :menu_detail_id, null:false
      t.integer :co_local
      t.integer :qt_precio
      t.integer :menu_id, null:false
      t.integer :dish_id
      

      t.timestamps null: false
    end
    add_index :menu_details, :menu_detail_id
  end
end
