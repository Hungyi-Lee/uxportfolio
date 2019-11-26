class AddPdfToProjects < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :project, :text
  end
end
