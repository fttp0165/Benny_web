class RenameProjectsProjectPrijectnameToProjectName < ActiveRecord::Migration[6.0]
  def change
    rename_column :projects, :priject_name, :project_name
  end
end
