class CreateClientAddresses < ActiveRecord::Migration
  def change
    create_table :client_addresses do |t|
      t.string :email, null:false
      t.integer :address_id, null:false

      t.timestamps null: false
    end
    add_index :client_addresses, :email
    add_index :client_addresses, :address_id
  end
end
