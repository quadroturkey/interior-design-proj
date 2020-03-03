class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.string :category
      t.float :price
      t.string :picture
      t.string :link
      t.integer :user_id

      t.timestamps
    end
  end
end
