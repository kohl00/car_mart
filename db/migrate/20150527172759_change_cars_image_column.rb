class ChangeCarsImageColumn < ActiveRecord::Migration
  def change
  	rename_column :cars, :cars_image_id, :car_image_id
  end
end
