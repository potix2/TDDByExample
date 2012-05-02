require 'test_result'
class TestCase
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def setUp
  end

  def run
    result = TestResult.new
    result.testStarted

    setUp
    send(@name)
    tearDown
    
    result
  end

  def tearDown
  end

  def assert(predicate)
    raise "assert: " << caller.join("\n") unless predicate
  end
end
