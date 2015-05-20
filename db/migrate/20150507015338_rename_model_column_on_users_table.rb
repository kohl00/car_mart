class RenameModelColumnOnUsersTable < ActiveRecord::Migration
  def change
  	rename_column :cars, :model, :kind
  end
end
