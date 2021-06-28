class AddPasswordDigestToUsers < ActiveRecord::Migration[6.1]
  add_column :users, :password_digest, :text
end
