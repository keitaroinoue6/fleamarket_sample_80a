class Items < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string        :name, null: false
      t.string        :description, null: false
      t.references    :category, null: false, foreign_key: true
      t.string        :brand
      t.integer       :status_id, null: false
      t.integer       :delivery_charge_id, null: false
      t.integer       :prefecture_id, null: false
      t.integer       :delivery_date_id, null: false
      t.integer       :price, null: false
      t.integer       :trading_status_id, null: false
      t.references     :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
