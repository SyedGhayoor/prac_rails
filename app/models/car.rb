class Car < Vehicle
    belongs_to :vehicle
    has_one :engine, as: :runable 
end
