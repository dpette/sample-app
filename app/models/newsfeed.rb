class Newsfeed < ActiveRecord::Base
  attr_accessible :content, :title
  

  
  validates :title, presence: true
  validates :content, presence: true
  
  default_scope order: 'newsfeeds.created_at DESC'
end
