class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.integer :menu_id, null:false
      t.date :fe_fecha
      t.integer :qt_menu
      t.integer :restaurant_id, null:false

      t.timestamps null: false
    end
    add_index :menus, :menu_id
  end
end
