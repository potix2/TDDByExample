class TestResult
  attr_accessor :runCount, :errorCount
  def initialize
    @runCount = 0
    @errorCount = 0
  end

  def testStarted
    @runCount += 1
  end

  def testFailed
    @errorCount += 1
  end

  def summary
    sprintf("%d run, %d failed", @runCount, @errorCount)
  end
end
