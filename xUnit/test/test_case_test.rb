require 'was_run'
class TestCaseTest < TestCase
  def testTemplateMethod
    test = WasRun.new("testMethod")
    test.run()
    assert "setUp testMethod tearDown " == test.log
  end

  def testResult
    test = WasRun.new("testMethod")
    result = test.run()
    assert "1 run, 0 failed" == result.summary()
  end

  def testFailedResultFormatting
    result = TestResult.new
    result.testStarted
    result.testFailed
    assert "1 run, 1 failed" == result.summary()
  end
  # def testFailedResult
  #   test = WasRun.new("testBrokenMethod")
  #   result = test.run()
  #   assert "1 run, 1 failed" == result.summary()
  # end
end
TestCaseTest.new("testTemplateMethod").run()
TestCaseTest.new("testResult").run()
#TestCaseTest.new("testFailedResult").run()
TestCaseTest.new("testFailedResultFormatting").run()
