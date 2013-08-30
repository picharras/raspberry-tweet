class Mention < ActiveRecord::Base
  attr_accessible :id, :twitter_id, :tweet_text, :published
  validates :twitter_id, :uniqueness => true
end