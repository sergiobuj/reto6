require 'httparty'

module API
  class Message
    include HTTParty
    base_uri 'http://localhost:8080'

    def self.create(message,owner)
      post("/messages.xml", :body => { "message" => { "msg" => message, "user-id" => owner } })
    end
    
    def self.all
      get("/messages.xml")
    end
    
    def self.find(id)
      get("/messages/#{id}.xml")
    end
    def self.destroy(id)
      delete("/messages/#{id}.xml")
    end
  end
end
