class Workout < ActiveRecord::Base
  belongs_to :user
  attr_accessible :activity, :minutes, :name, :user_id, :user
  validates :activity, :minutes, :name, :presence => true
  validates_associated :user
  
  def user_name
    user.name if user
  end
  
  scope :most_minutes, order('minutes desc').limit(10)
  
end
