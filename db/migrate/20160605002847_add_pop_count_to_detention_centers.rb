class AddPopCountToDetentionCenters < ActiveRecord::Migration
  def change
  	add_column :detention_centers, :pop_count, :integer
  	
  end
end
