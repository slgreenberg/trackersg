class User < ActiveRecord::Base
  has_many :workouts
  attr_accessible :name
  validates :name, :uniqueness => true
end
