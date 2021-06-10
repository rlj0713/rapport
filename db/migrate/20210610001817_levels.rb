class Levels < ActiveRecord::Migration[6.1]
  def change
    create_table :levels do |t|
      t.integer :value

      t.timestamps
    end
  end
end