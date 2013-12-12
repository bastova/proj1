class AddCountryTitleCityAge < ActiveRecord::Migration
  def change
	add_column :users, :country, :string
	add_column :users, :city, :string
	add_column :users, :title, :string
	add_column :users, :age, :string
  end
end
