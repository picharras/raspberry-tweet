class Friend < ActiveRecord::Base
  attr_accessible :id, :twitter_id, :user
  validates :twitter_id, :uniqueness => true
end