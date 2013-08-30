#!/usr/bin/ruby
# encoding: utf-8
require 'rubygems'
require 'twitter'
require 'mysql2'
require 'active_record'
require 'yaml'
require 'curb'
require 'rexml/document'
require 'googl'
require_relative 'config/config.rb'

#Re-tweet a story about raspberry
tweets = Twitter::search('"Raspberry Pi" OR #Raspbian OR #RiscOS OR #Pidora OR #RaspberryPi', :lang => 'es', :count => 8, :result_type => 'recent').results
index = rand(tweets.length)
Twitter.retweet(tweets[index].id)