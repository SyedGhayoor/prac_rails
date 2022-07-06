class Vehicle < ApplicationRecord
     
    has_many :cars, class_name: 'Car' 
    has_many :bikes, class_name: 'Bike' 
    has_many :trucks, class_name: 'Truck'

    scope :cars, -> {where(type: 'Car')}
    scope :bikes, -> {where(type: 'Bike')}
    scope :trucks, -> {where(type: 'Truck')}

end
