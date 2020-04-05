class CreateSideprojects < ActiveRecord::Migration[6.0]
  def change
    create_table :sideprojects do |t|
      t.integer :user_id
      t.string :title
      t.string :projectdate
      t.text :briefintro
      t.text :overview
      t.text :coverimage
      t.text :description
      t.timestamps
    end
  end
end
