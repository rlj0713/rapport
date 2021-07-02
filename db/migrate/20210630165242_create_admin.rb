class CreateAdmin < ActiveRecord::Migration[6.1]
  def change
    create_table :admins do |t|
      t.text :username
      t.text :password_digest

      t.timestamps
    end
  end
end
