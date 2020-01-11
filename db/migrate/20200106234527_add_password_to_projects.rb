class AddPasswordToProjects < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :password, :string
  end
end
