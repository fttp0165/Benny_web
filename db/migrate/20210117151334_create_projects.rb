class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :priject_name
      t.text   :project_content
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
