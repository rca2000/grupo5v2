class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.integer :dish_id, null:false
      t.string :no_plato
      t.string :no_tipoplato

      t.timestamps null: false
    end
    add_index :dishes, :dish_id
  end
end
