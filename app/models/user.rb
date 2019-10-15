class User < ApplicationRecord
  has_many :comments, :dependent => :destroy
  has_many :groups, :dependent => :destroy
end
