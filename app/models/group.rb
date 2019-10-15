class Group < ApplicationRecord
  belongs_to :user
  #this allows the group to be deleted if they have events, making the group_id (in the event) "null". aka the event doesn't need a group to exist... just an example. 
  has_many :events, :dependent => :nullify
end