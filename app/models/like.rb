class Like < ActiveRecord::Base
	belongs_to :user
	belongs_to :category
	attr_accessible :title, :user_id, :sport, :user
end
