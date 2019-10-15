class Event < ApplicationRecord
  belongs_to :group
  has_many :comments, :dependent => :destroy
  validates :name, :location, presence: true
end
