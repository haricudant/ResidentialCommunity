class Service < ApplicationRecord
   
validates :servicename , presence: true, format: { with: /\A[a-z]*\z/i, message:  "Name must only contain letters." }, uniqueness: { case_sensitive: false},length: { minimum: 2,maximum: 20 } 

end
