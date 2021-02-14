class AddPositionInExperience < ActiveRecord::Migration[6.0]
  def change
    add_column :experiences, :position, :integer
    add_column :experiences, :deleted_at, :datetime
  end
end
