class RenameDetentionCenterInDeaths < ActiveRecord::Migration
  def change
  	rename_column :deaths, :detention_center, :det_center
  end
end
