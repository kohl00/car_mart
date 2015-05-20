class ChangePriceColumnOnChargesAndCars < ActiveRecord::Migration
  def change
  	change_column :cars, :price, :integer
  	change_column :charges, :price, :integer
  end
end
