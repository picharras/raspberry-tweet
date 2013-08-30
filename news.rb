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

#Get RSS news from google
url = "https://news.google.com/news/feeds?q=raspberry+pi&output=rss&hl=es&ie=UTF-8"
http = Curl.get(url)
news = Array.new
doc =  REXML::Document.new(http.body_str)

doc.elements.each("rss/channel/item") do |item|
  this_new = {:title =>item.elements['title'].text,
    :link =>item.elements['link'].text}
  news << this_new
end

random_new = news[rand(news.length)]
random_new[:link] = /url=https?:\/\/[\S]+/.match(random_new[:link]).to_s.gsub!('url=','')
url = Client.shorten(random_new[:link])

Twitter.update("#{random_new[:title]} #{url.short_url}")