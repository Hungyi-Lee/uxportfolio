class ChangeColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :projects, :project, :pdf
  end
end
