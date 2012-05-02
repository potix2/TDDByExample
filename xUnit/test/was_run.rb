require 'test_case'
class WasRun < TestCase
  attr_accessor :log

  def setUp
    @log = "setUp "
  end

  def tearDown
    @log += "tearDown "
  end

  def testMethod
    @log += "testMethod "
  end
end
