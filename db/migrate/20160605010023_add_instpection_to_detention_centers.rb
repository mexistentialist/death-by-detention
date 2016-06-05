class AddInstpectionToDetentionCenters < ActiveRecord::Migration
  def change
  	add_column :detention_centers, :inspection, :string

  end
end
