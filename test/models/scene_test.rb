require File.expand_path(File.dirname(__FILE__) + '/../test_config.rb')

class SceneTest < Test::Unit::TestCase
  context "Scene Model" do
    should 'construct new instance' do
      @scene = Scene.new
      assert_not_nil @scene
    end
  end
end
