class AddSchoolIdToUser < ActiveRecord::Migration[6.1]
  add_column :users, :school_id, :integer
end
