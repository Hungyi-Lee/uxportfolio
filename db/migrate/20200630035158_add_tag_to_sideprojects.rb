class AddTagToSideprojects < ActiveRecord::Migration[6.0]
  def change
    add_column :sideprojects, :tag, :string
  end
end
