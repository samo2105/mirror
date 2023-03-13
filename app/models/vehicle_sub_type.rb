class VehicleSubType < ApplicationRecord
  belongs_to :vehicle_type
  has_many :vehicles
end
