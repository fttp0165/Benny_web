class CreateCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :categories do |t|
      t.string :name
      t.datetime :delete_at
      t.integer :position

      t.timestamps
    end
    add_index :categories, :delete_at
  end
end