# modules are similar to "interfaces" in other languages.

module ToFile
  def filename
    "object_#{self.object_id}.txt"
  end

  def to_f
    # note that to_s is not defined here
    File.open(filename, "w") {|f| f.write(to_s)}
  end
end

class Person
  # Person has the ToFile module, making all the functions of ToFile part of Person.
  include ToFile
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def to_s
    name
  end
end

Person.new("josh").to_f
