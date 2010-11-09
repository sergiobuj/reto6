class Message
  attr_accessor :msg, :owner
  def initialize(attr = {})
    @msg = attr["msg"]
    @owner = attr["user_id"]
  end

  def self.create(message, owner)
    single(API::Message.create(message, owner))
  end
  
  def self.all
    multiple(API::Message.all())
  end
  protected
  def self.single(answer)
    status = answer.response.code.to_i
    if status >= 200 and status < 300
      return Message.new(answer.parsed_response["message"])
    else
      raise Exception.new("Problem to load single message instance, message #{answer.response.code} #{answer.response.code_type}")
    end
  end
  def self.multiple(answer)
    status = answer.response.code.to_i
    if status >= 200 and status < 300
      ans = []
      array = answer.parsed_response["messages"]
      array.each do |x|
        ans << Message.new(x)
      end
      return ans
    else
      raise Exception.new("Problem to load multiple messages instances, message #{answer.response.code} #{answer.response.code_type}")
    end    
  end
end
