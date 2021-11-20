class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|

      t.string :lname, null: false
      t.string :image_id, null: false
      t.text :introduction, null: false
      t.integer :price, null: false
      t.boolen :is_active, null: false, default: "TRUE"
      t.datetime :created_at, null: false, default: "now"
      t.datetime :updated_at, null: false, default: "now"
      t.timestamps
    end
  end
end
