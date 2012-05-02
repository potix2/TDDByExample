class TestResult
  attr_accessor :runCount
  def initialize
    @runCount = 0
  end

  def testStarted
    @runCount += 1
  end

  def summary
    sprintf("%d run, 0 failed", @runCount)
  end
end
