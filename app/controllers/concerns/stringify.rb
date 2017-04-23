class Stringify
  attr_accessor :name, :adjective

  def initialize(name, adjective)
    @name = name
    @adjective = adjective
  end

  def what_am_i
    result ="result"
    if @name!=nil || @adjective!=nil
      result = @name + @adjective
    else
      result = "you are nothing!"
    end
    return result
  end
end
