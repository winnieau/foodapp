class Recipe < ActiveRecord::Base
  include HTTParty
 ENV["FOOD2FORK_KEY"] = '94fd4f3733b383b5c28c9b2e0e5dda1e'
 base_uri 'http://food2fork.com/api'
 default_params key: ENV["FOOD2FORK_KEY"]
 format :json

 def self.for term
 get("/search", query: { q: term})["recipes"]
 end
end
