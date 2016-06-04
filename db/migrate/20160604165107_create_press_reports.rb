class CreatePressReports < ActiveRecord::Migration
  def change
    create_table :press_reports do |t|
      t.string :url
      t.string :article_name
      t.integer :death_id

      t.timestamps null: false
    end
  end
end
