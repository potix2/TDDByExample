class TestCase
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def setUp
  end

  def run
    setUp
    send(@name)
    tearDown
  end

  def tearDown
  end

  def assert(predicate)
    raise "assert: " << caller.join("\n") unless predicate
  end
end
