require 'httparty'
require 'crack'
module API
  class User
    include HTTParty
    base_uri 'http://localhost:8080'
    
    def self.getAll
      get("/users.xml")
    end
    
    def self.getUser(id)
      get("/users/#{id}.xml")
    end
    
    def self.login(username)
      post("/users.xml", :body => { "user" => { "name" => username } })
    end
    
    def self.logout(id)
      delete("/users/#{id}.xml")
    end
  end
end
