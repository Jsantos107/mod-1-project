require "bundler/setup"
Bundler.require

require_all "lib"
ActiveRecord::Base.logger = nil

api_questions = RestClient.get "https://opentdb.com/api.php?amount=25&difficulty=easy&type=multiple"
parsed_questions = JSON.parse(api_questions)
# names = parsed_response.map{|characters| "results"["name"]}
# binding.pry