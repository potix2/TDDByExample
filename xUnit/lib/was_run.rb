require 'test_case'
class WasRun < TestCase
  attr_accessor :wasRun

  def initialize(name)
    super(name)
    @wasRun = false
  end

  def testMethod
    @wasRun = true
  end
end
