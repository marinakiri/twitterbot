#!/usr/bin/env ruby

require 'twitter'

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = ENV["YOUR_CONSUMER_KEY"]
  config.consumer_secret     = ENV["YOUR_CONSUMER_SECRET"]
  config.access_token        = ENV["YOUR_ACCESS_TOKEN"]
  config.access_token_secret = ENV["YOUR_ACCESS_SECRET"]
end

client.search("#ruby").take(50).each do |tweet|
  puts tweet.text
end
