class Role < ActiveRecord::Base

  belongs_to :movie
  belongs_to :actor

  # def actor
  #   Actor.find(self.actor_id)
  # end

end
