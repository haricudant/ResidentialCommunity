 require 'singleton'
class Product < ApplicationRecord
 
    has_many :order_items
    has_many :assignments
    validates_numericality_of :price, :greater_than => 0, :less_than => 20,:message => 'Price entered should not be less than zero and should not be greater than 20'
    accepts_nested_attributes_for :assignments
    has_many :colors, through: :assignments
      validates :title, :price, presence: true
      validates :title,uniqueness: { case_sensitive: false}
end
