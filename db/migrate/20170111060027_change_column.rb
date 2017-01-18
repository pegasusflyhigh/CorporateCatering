class ChangeColumn < ActiveRecord::Migration[5.0]
  def change
  	change_column :companies, :phoneno, :integer, :limit => 10
  	
  	
  end
end
