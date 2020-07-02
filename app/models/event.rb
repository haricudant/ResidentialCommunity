require 'singleton'
class Event < ApplicationRecord
    has_many :userinterests, dependent: :destroy
validates :name , uniqueness: { case_sensitive: false},length: { minimum: 2, maximum: 20 }
validates_numericality_of :cost, :greater_than => 0, :less_than => 1000,presence: true
validates :name , presence: true, format: { with: /\A[a-z]*\z/i, message:  "Name must only contain letters." }
  
end   