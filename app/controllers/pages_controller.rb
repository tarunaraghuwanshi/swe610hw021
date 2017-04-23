class PagesController < ApplicationController
  def home
     foo = Foobar.new "baz"
     @baz = foo.bar :cat, sat: :dat, dat: :sat
  end

  def stringify
    @stringify_instance = Person.new params[:name], params[:adjective]
  end

  def age
  end
  def me
  end

  def person
     @person = Person.new params[:name], params[:age]
  end
end
