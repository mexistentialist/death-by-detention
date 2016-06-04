class CreateHrvReports < ActiveRecord::Migration
  def change
    create_table :hrv_reports do |t|
      t.string :url
      t.string :report_name
      t.integer :detention_center_id

      t.timestamps null: false
    end
  end
end
