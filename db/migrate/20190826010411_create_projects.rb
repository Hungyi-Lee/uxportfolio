class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.integer :user_id
      t.string :title
      t.string :category
      t.string :projectdate
      t.text :coverimage
      t.text :description
      t.timestamps
    end
  end
end
