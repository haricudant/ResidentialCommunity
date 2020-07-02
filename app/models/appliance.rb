class Appliance < ApplicationRecord
    validates_numericality_of  :Appliance_watt, presence: true,  :greater_than => 0,:less_than => 3000
validates :Appliance_name , uniqueness: { case_sensitive: false},length: { minimum: 2,maximum: 20}
validates :Appliance_name , presence: true, format: { with: /\A[a-z]*\z/i, message:  "Name must only contain letters." }
end