class CreateLikes < ActiveRecord::Migration[6.0]
  def change
    create_table :likes do |t|
      t.boolean :liked?, default: false

      t.timestamps
    end
  end
end
