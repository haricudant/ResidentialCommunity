class Asset < ApplicationRecord
  belongs_to :user
  validates :assettype,presence: true
  validates :workingcondition, presence: true
   has_many :Complains, dependent: :destroy
      accepts_nested_attributes_for :Complains, :reject_if => :all_blank, :allow_destroy => true
    validates :assetname , presence: true, format: { with: /\A[a-z]*\z/i, message:  "Name must only contain letters." }
    validates :assetname , length: { minimum: 2,maximum: 20, message:  "Name must atleast 2 character with  atmost 20 characters." }
end
