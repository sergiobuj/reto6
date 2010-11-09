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
  end
end
