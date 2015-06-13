class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.integer :address_id, null:false
      t.string :no_direccion
      t.integer :district_id

      t.timestamps null: false
    end
    add_index :addresses, :address_id
  end
end
