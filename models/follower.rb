class Follower < ActiveRecord::Base
  attr_accessible :id, :twitter_id, :username
  validates :twitter_id, :uniqueness => true
end