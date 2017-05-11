class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,:confirmable
         
          has_many :properties
          validates :first_name, :phone_number , presence: true
          validates :phone_number, numericality: true
end
