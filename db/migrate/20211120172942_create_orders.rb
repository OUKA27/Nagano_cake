class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|

      t.integer :id, null: false
      t.string :postal_code, null: false
      t.string :adress, null: false
      t.string :name, null: false
      t.integer :shipping_coat, null: false
      t.integer :total_payment, null: false
      t.integer :payment_method, null: false, default: "0"
      t.integer :first_name_kana, null: false, default: "0"
      t.datetime :created_at, null: false, default: "now"
      t.datetime :updated_at, null: false, default: "now"
      t.timestamps
    end
  end
end
