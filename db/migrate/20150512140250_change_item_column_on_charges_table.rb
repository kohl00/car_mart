class ChangeItemColumnOnChargesTable < ActiveRecord::Migration
  def change
  	rename_column :charges, :item, :car_id
  	change_column :charges, :car_id, :integer
  end
end
