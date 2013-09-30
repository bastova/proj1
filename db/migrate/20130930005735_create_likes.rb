class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.string :like
      t.string :user
      t.boolean :sport

      t.timestamps
    end
  end
end
