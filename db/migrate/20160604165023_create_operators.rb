class CreateOperators < ActiveRecord::Migration
  def change
    create_table :operators do |t|
      t.string :type
      t.string :name
      t.integer :networth

      t.timestamps null: false
    end
  end
end
