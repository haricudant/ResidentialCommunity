class Rent < ApplicationRecord
    validates_numericality_of :grossrent, presence: true, allow_blank: false, :greater_than => 0, :less_than => 4000

    validates_numericality_of :mortage_interest, presence: true, allow_blank: false
    validates_numericality_of :repairs, presence: true, allow_blank: false
    validates_numericality_of :insurance, presence: true, allow_blank: false
    validates_numericality_of :repairs, presence: true, allow_blank: false
    validates_numericality_of :management_charges, presence: true, allow_blank: false
    validates_numericality_of :wear_and_tear, presence: true, allow_blank: false
    validates_numericality_of :agent_fee, presence: true, allow_blank: false
    validates_numericality_of :other, presence: true, allow_blank: false
end
