class ChangePerDiemInDetentionCenters < ActiveRecord::Migration
  def change
  	change_column :detention_centers, :per_diem, :string
  end
end
