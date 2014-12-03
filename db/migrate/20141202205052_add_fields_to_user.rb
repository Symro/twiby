class AddFieldsToUser < ActiveRecord::Migration
  def change
    add_column :users, :username, :string
    add_column :users, :description, :text
    add_column :users, :avatar, :string
  end
end
