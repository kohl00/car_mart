class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.decimal :price, :precision => 10, :scale => 2
      t.string :make
      t.integer :user_id
      t.boolean :arrived
      t.string :model
      t.integer :year

      t.timestamps null: false
    end
  end
end
