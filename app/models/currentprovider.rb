class Currentprovider < ApplicationRecord
    validates :cost,:standingcharge,:pslvcharge, presence: true
validates :standingcharge, :format => { :with => /\A\d+(?:\.\d{0,2})?\z/ }, :numericality => {:greater_than => 0, :less_than => 500}
validates :pslvcharge,:cost, :format => { :with => /\A\d+(?:\.\d{0,4})?\z/ }, :numericality => {:greater_than => 0, :less_than => 100}
validates :providername , presence: true, format: { with: /\A[a-z]*\z/i, message:  "Name must only contain letters." }
     
     
     
end
