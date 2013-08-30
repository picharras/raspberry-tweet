#!/usr/bin/ruby
# encoding: utf-8
require 'rubygems'
require 'twitter'
require 'timeout'
require 'yaml'
require 'active_record'
require 'googl'
require_relative 'config/config.rb'

#Tells time
time_now = Time.now
Twitter.update("En este momento las #{time_now.strftime('%k:%M')} horas ¿Y tu qué estas haciendo con tu Raspberry Pi?")