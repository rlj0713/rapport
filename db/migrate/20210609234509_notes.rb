class Notes < ActiveRecord::Migration[6.1]
  def change
    create_table :notes do |t|
      t.integer :creator_id
      t.integer :target_id
      t.text  :content
      t.integer :level_id
      t.integer :category_id

      t.timestamps
    end
  end
end
