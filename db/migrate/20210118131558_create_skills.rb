class CreateSkills < ActiveRecord::Migration[6.0]
  def change
    create_table :skills do |t|
      t.string :skill_name
      t.integer :skill_value
      t.timestamps
    end
  end
end
