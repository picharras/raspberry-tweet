#!/usr/bin/ruby
# encoding: utf-8
require 'rubygems'
require 'twitter'
require 'yaml'
require 'active_record'
require 'googl'
require_relative 'config/config.rb'
require_relative 'models/follower.rb'

#Say hello to new followers
followers = Twitter.followers
followers.each do |f|
	unless Follower.find_by_twitter_id(f.id)
		new_follwer = Follower.create!(:twitter_id => f.id, :username => f.username)
    Twitter.update('@'+new_follwer.username+' Hola, qué tal!! :)')
    Twitter.follow(new_follwer.username)
	end
end