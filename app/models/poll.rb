class Poll < ApplicationRecord
    has_many :vote_values, dependent: :destroy
    accepts_nested_attributes_for :vote_values, :reject_if => :all_blank, :allow_destroy => true
    
    def normalized_votes_for(content)
           if vote_count != 0 
              value =  content.votes.count.to_f / vote_count 
              value*100
           end
    end
    def vote_count
         vote_values.inject(0) {|summary, option| summary + option.votes.count}
    end
end
