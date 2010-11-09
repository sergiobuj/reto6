class Message
  attr_accessor :msg, :owner
  def initialize(attr = {})
    @msg = attr["msg"]
    @owner = attr["owner"]
  end

  def self.create(message, owner)
    single(API::User.create(message, owner))
  end
  
end
