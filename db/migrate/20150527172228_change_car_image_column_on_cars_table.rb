class ChangeCarImageColumnOnCarsTable < ActiveRecord::Migration
  def change
  	rename_column :cars, :car_image, :cars_image_id
  end
end
