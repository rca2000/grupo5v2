class CreateOrderDetails < ActiveRecord::Migration
  def change
    create_table :order_details do |t|
      t.integer :order_detail_id
      t.integer :dish_id
      t.string :no_tipoplato
      t.integer :qt_precio
      t.integer :qt_cantidad
      t.integer :order_id

      t.timestamps null: false
    end
    add_index :order_details, :order_detail_id
  end
end
