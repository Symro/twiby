class AddDefaultValueForUserDescription < ActiveRecord::Migration
  def change
    change_column :users, :description, :string, :default => ""
  end
end
