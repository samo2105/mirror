class Vehicle < ApplicationRecord
  belongs_to :brand
  belongs_to :vehicle_sub_type
  has_many :variants, dependent: :destroy
end
