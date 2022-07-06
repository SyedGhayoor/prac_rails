class VehiclesController < ApplicationController
    def index
        @vehicle = Vehicle.all
    end
end
