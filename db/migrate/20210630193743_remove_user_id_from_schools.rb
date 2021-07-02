class RemoveUserIdFromSchools < ActiveRecord::Migration[6.1]
  remove_column :schools, :user_id
end
