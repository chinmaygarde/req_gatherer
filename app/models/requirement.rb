class Requirement < ActiveRecord::Base
  belongs_to :priority
  belongs_to :auth_level
  belongs_to :status
  
  validates_presence_of :title, :description, :preconditions, :postconditions, :steps_to_use_case
end
