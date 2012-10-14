class Workout < ActiveRecord::Base
  belongs_to :user
  attr_accessible :activity, :minutes, :name, :user_id, :user
  
  def user_name
    user.name if user
  end
end
