class CreateInformation < ActiveRecord::Migration[6.0]
  def change
    create_table :information do |t|
      t.string :name
      t.string :ename
      t.text :summary
      t.string :picture
      t.timestamps
      
    end
  end
end
