class CreateDetentionCenters < ActiveRecord::Migration
  def change
    create_table :detention_centers do |t|
      t.string :name
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :state
      t.string :zip
      t.string :county
      t.integer :operator_id
      t.integer :avg_lngth_stay
      t.decimal :per_diem, :precision => 5, :scale => 2
      t.string :det_standard
      t.string :type_contract

      t.timestamps null: false
    end
  end
end
