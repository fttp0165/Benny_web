class AddWebLinkInprojects < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :web_link, :string
  end
end
