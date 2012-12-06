class Micropost < ActiveRecord::Base
  attr_accessible :content
  # Tell me that Micropost belongs to User 
  belongs_to :user

  validates :user_id, presence: true

  validates :content, presence: true#, length: {maximum: 140}

  default_scope order: 'microposts.created_at DESC'
  
  def self.from_users_followed_by(user)
    followed_users_ids = "SELECT followed_id 
                          FROM relationships
                          WHERE follower_id = :user_id" 
    where("user_id IN (#{followed_users_ids}) OR user_id = :user_id ", user_id: user)
  end
  
end
