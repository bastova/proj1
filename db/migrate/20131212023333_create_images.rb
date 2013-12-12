class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
	  t.column "name", :string
	  t.column "width", :integer
	  t.column "height", :integer
      t.timestamps
    end
  end
end
