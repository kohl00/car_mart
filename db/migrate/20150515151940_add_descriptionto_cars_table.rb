class AddDescriptiontoCarsTable < ActiveRecord::Migration
  def change
  	add_column :cars, :description, :text
  end
end
