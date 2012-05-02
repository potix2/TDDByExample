require 'was_run'
class TestCaseTest < TestCase
  attr_accessor :test
  def setUp
    @test = WasRun.new("testMethod")
  end

  def testSetUp
    @test.run()
    assert @test.wasSetUp
  end

  def testRunning
    @test.run()
    assert @test.wasRun
  end
end
TestCaseTest.new("testRunning").run()
TestCaseTest.new("testSetUp").run()
