class Status < ActiveRecord::Base
  has_many :requirements
  validates_presence_of :title
end
