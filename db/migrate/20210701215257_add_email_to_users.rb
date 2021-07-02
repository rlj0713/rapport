class AddEmailToUsers < ActiveRecord::Migration[6.1]
  add_column :users, :email, :text
end
