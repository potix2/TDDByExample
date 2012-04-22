require 'was_run'
class TestCaseTest < TestCase
  def testRunning
    test = WasRun.new("testMethod")
    raise "assert" if test.wasRun
    test.run()
    raise "assert" unless test.wasRun
  end
end
TestCaseTest.new("testRunning").run()
