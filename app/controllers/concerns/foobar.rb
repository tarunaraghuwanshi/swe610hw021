class Foobar
  # ENTER CODE FOR Q2 HERE
    attr_accessor :name
  def initialize name
    @name = name
  end
 def bar(val1, val2)
     @arg1 = val1
     hash = Hash.try_convert(val2)
     temp = hash.keys[1]
     result = @arg1.to_s + @name.to_s + temp.to_s
     return result
 end

end
