class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         has_many :votes, dependent: :destroy
         has_many :vote_values, through: :votes
         has_one :profile
         has_many :assets, dependent: :destroy
         has_many :complains, dependent: :destroy
         has_many :eventinterests
       PASSWORD_FORMAT = /\A
  (?=.{8,})          # Must contain 8 or more characters
  (?=.*\d)           # Must contain a digit
  (?=.*[a-z])        # Must contain a lower case character
  (?=.*[A-Z])        # Must contain an upper case character
  (?=.*[[:^alnum:]]) # Must contain a symbol
/x
validates :password, 
  presence: true, 
  length: { in: Devise.password_length}, 
  format: { with: PASSWORD_FORMAT }, 
  confirmation: true, 
  on: :create 

validates :password, 
  allow_nil: true, 
  length: { in: Devise.password_length }, 
 format: { with: PASSWORD_FORMAT }, 
  confirmation: true, 
  on: :update 
         
         def voted_for?(poll)
          vote_values.any? {|v| v.poll == poll }
         end

end