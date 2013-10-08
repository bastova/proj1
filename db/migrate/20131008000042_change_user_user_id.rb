class ChangeUserUserId < ActiveRecord::Migration
  def change
	change_table(:likes) do |t|
		t.integer :user_id, null: false, default: 0
	end
  end
end
