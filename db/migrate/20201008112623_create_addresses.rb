class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.string      :zip_code, null: false
      t.integer     :prefecture_id, null: false
      t.string      :city, null: false
      t.string      :block_number, null: false
      t.string      :apartment_name
      t.references  :user, null: false

      t.timestamps
    end
  end
end
