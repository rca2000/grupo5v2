class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :order_id, null:false
      t.string :email
      t.integer :qt_montototal
      t.string :estado
      t.integer :restaurant_id

      t.timestamps null: false
    end
    add_index :orders, :order_id
  end
end
