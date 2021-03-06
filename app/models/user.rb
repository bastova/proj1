class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	has_many :image
	has_many :like
	attr_accessible :name, :email, :password, :password_confirmation, :country, :title, :age, :city
	#validates :name, presence: true
	#validates :name, uniqueness: true
	emailFormatValidation = /[a-z.-]+@[a-z \d -.]+[.][a-z]+/i
	validates :email, format: {with: emailFormatValidation}
	scope :has_name, -> {where("name <> ''").order(:name)}
	#validates :age, numericality: { :only_integer => true, :greater_than_or_equal_to => 5 } 
	#validates :age, :name, :country, :city, :email, :title, presence: true
end
