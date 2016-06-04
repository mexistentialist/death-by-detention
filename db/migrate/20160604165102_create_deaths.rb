class CreateDeaths < ActiveRecord::Migration
  def change
    create_table :deaths do |t|
      t.string :first_name
      t.string :last_name
      t.string :cause
      t.integer :age
      t.date :date
      t.string :lawsuit
      t.integer :detention_center_id
      t.string :country_of_origin

      t.timestamps null: false
    end
  end
end
