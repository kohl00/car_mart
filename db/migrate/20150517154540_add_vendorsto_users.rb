class AddVendorstoUsers < ActiveRecord::Migration
  def change
  	add_column :users, :vendor, :boolean 
  end
end
