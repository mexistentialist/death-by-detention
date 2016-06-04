class CreateAdvocacyGroups < ActiveRecord::Migration
  def change
    create_table :advocacy_groups do |t|
      t.string :org_name
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :state
      t.string :zip
      t.string :county
      t.string :contact_name
      t.string :phone
      t.integer :detention_center_id

      t.timestamps null: false
    end
  end
end
