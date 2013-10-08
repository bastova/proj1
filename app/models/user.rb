class User < ActiveRecord::Base
	has_many :like
	attr_accessible :name, :email, :password
end
