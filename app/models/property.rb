class Property < ActiveRecord::Base
    
   geocoded_by :address
  after_validation :geocode, :if => :address_changed?
  

    belongs_to :type
    belongs_to :user
    
    validates :title, :description,:price,:address, presence: true
    validates :description, length: { minimum: 20 }
    validates :price, numericality: true

end
