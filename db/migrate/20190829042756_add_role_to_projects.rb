class AddRoleToProjects < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :role, :string
    add_column :projects, :tools, :string
    add_column :projects, :heroimage, :text
  end
end
