class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
          has_many :properties, dependent: :destroy
         devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,:timeoutable ,:confirmable, timeout_in: 1.minutes
         
          validates :first_name, :phone_number , presence: true
          validates :phone_number, numericality: true
end
