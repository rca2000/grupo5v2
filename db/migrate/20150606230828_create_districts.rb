class CreateDistricts < ActiveRecord::Migration
  def change
    create_table :districts do |t|
      t.string :district_id, null:false
      t.string :no_distrito

      t.timestamps null: false
    end
    add_index :districts, :district_id
  end
end
