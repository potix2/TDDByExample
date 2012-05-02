require 'was_run'
class TestCaseTest < TestCase
  def testTemplateMethod
    test = WasRun.new("testMethod")
    test.run()
    assert "setUp testMethod tearDown " == test.log
  end
end
TestCaseTest.new("testTemplateMethod").run()
