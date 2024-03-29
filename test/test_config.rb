PADRINO_ENV = 'test' unless defined?(PADRINO_ENV)
require File.expand_path(File.dirname(__FILE__) + "/../config/boot")

class Test::Unit::TestCase
  include Rack::Test::Methods
  
  before(:each) { Mongoid::IdentityMap.clear }

  def app
    ##
    # You can handle all padrino applications using instead:
    #   Padrino.application
    ShinyHub.tap { |app|  }
  end
end
