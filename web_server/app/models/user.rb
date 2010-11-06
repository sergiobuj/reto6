class User
  attr_accessor :name, :id
  def initialize(attr = {})
    @name = attr["name"]
    @id = attr["id"].to_s
  end

  def self.create(name)
    single(API::User.login(name))
  end
  
  def self.all
    multiple(API::User.getAll())
  end
  
  def self.find(id)
    single(API::User.getUser(id))
  end
  
  def destroy
    API::User.logout(@id)
  end
  protected
  def self.single(answer)
    status = answer.response.code.to_i
    if status >= 200 and status < 300
      return User.new(answer.parsed_response["user"])
    else
      raise Exception.new("Problem to load single user instance, message #{answer.response.code} #{answer.response.code_type}")
    end
  end
  def self.multiple(answer)
    status = answer.response.code.to_i
    if status >= 200 and status < 300
      ans = []
      array = answer.parsed_response["users"]
      array.each do |x|
        ans << User.new(x)
      end
      return ans
    else
      raise Exception.new("Problem to load multiple useres instances, message #{answer.response.code} #{answer.response.code_type}")
    end    
  end
end
