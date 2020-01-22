require 'bundler/setup'
Bundler.require
ActiveRecord::Base.logger = nil
response = RestClient.get()
require_all 'lib'