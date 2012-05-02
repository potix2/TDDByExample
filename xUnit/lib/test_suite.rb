class TestSuite
  attr_accessor :tests
  def initialize
    @tests = []
  end

  def add(test)
    @tests.push test
  end

  def run(result)
    @tests.each do |test|
      test.run result
    end
  end
end
