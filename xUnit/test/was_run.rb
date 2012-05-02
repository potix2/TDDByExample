require 'test_case'
class WasRun < TestCase
  attr_accessor :wasRun, :wasSetUp

  def setUp
    @wasRun = false
    @wasSetUp = true
  end

  def testMethod
    @wasRun = true
  end
end
