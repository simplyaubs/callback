class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.integer :skill_type_id
      t.string :description

      t.timestamps
    end
    add_index :skills, :skill_type_id
  end
end
