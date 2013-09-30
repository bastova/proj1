class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.integer :number
      t.string :title

      t.timestamps
    end
  end
end
