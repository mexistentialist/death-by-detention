class CreateRepercussions < ActiveRecord::Migration
  def change
    create_table :repercussions do |t|
      t.string :org_name
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone
      t.string :contact_name
      t.integer :detention_center_id

      t.timestamps null: false
    end
  end
end
