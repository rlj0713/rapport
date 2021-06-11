class AddImageToUsers < ActiveRecord::Migration[6.1]
  add_column :users, :image, :string
end
