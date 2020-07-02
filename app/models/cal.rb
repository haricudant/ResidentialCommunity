class Cal < ApplicationRecord
    validates :name, :rent, presence: true
end
