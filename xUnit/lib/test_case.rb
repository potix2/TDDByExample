class TestCase
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def run
    send(@name)
  end

end
