class Person
  attr_accessor :name, :age, :introduction
  
  def initialize(name, age)
    @name = name
    @age = age
  end

  def nickname
    @nickname = @name[0,4]
  end

  def birth_year
    now = Time.now.utc.to_date
    birthYear = now.year - @age.to_i
  end

  def introduction
   @introduction= @name + @age
  end

end
