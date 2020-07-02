class VotesController < ApplicationController
    
    def create
        if current_user && params[:poll] && params[:poll][:id] && params[:vote_value] && params[:vote_value][:id]
        @poll = Poll.find_by_id(params[:poll][:id])
        @option = @poll.vote_values.find_by_id(params[:vote_value][:id])
         if @option && @poll && !current_user.voted_for?(@poll)
                 
            @option.votes.create({user_id: current_user.id}) + current_user.votes.create({vote_value_id: @value.id})
            current_user.vote_values.reset
         else
             render js: 'alert(\'Your vote cannot be saved. Have you already voted?\');'
         end
          else
      render js: 'alert(\'Your vote cannot be saved.\');'
    end
    end
end