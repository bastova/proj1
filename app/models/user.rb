class User < ActiveRecord::Base
	has_many :like
	attr_accessible :name, :email, :password
	validates :name, presence: true
	validates :name, uniqueness: true
	emailFormatValidation = /[a-z.-]+@[a-z \d -.]+[.][a-z]+/i
	validates :email, format: {with: emailFormatValidation}
end
