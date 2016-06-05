class AddColumnsToInmateDeaths < ActiveRecord::Migration
  def change
  	add_column :deaths, :birthdate, :string
  	add_column :deaths, :sex, :string
  	add_column :deaths, :name, :string
  	add_column :deaths, :detention_center, :string
  end
end
