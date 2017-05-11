class Property < ActiveRecord::Base
    
    belongs_to :type
    belongs_to :user
   geocoded_by :address
  after_validation :geocode, :if => :address_changed?
  

    
    validates :title, :description,:price,:address, presence: true
    validates :description, length: { minimum: 20 }
    validates :price, numericality: true

end
