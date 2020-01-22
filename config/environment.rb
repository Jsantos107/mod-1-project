require "bundler/setup"
Bundler.require

require_all "lib"
ActiveRecord::Base.logger = nil

response = RestClient.get "https://rickandmortyapi.com/api/character"
parsed_response = JSON.parse(response)
names = parsed_response.map{|characters| "results"["name"]}
# binding.pry