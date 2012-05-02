require 'test_result'
class TestCase
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def setUp
  end

  def run(result)
    result.testStarted
    setUp
    begin
      send(@name)
    rescue
      result.testFailed
    end
    tearDown
  end

  def tearDown
  end

  def assert(predicate)
    raise "assert: " << caller.join("\n") unless predicate
  end
end
