class CHangeTypeInOperator < ActiveRecord::Migration
  def change
  	rename_column :operators, :type, :operator_type

  end
end
