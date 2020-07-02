class Serviceprovider < ApplicationRecord
     has_many :Complains, dependent: :destroy
     VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
    
    
validates :providername , presence: true, format: { with: /\A[a-z]*\z/i, message:  "Name must only contain letters." }, uniqueness: { case_sensitive: false},length: { minimum: 2,maximum: 20 } 

    
     validates :mailid, 
     presence: true, 
     format: {:with => VALID_EMAIL_REGEX}
end
