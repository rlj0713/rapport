class CreateSchool < ActiveRecord::Migration[6.1]
  def change
    create_table :schools do |t|
      t.text :name

      t.timestamps
    end
  end
end
