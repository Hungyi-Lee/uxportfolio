class CreateWorks < ActiveRecord::Migration[6.0]
  def change
    create_table :works do |t|
      t.integer :user_id
      t.string :company
      t.string :timeline
      t.string :position
      t.string :location
      t.string :companylink
      t.text :description
      t.timestamps
    end
  end
end
