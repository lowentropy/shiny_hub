require 'spec_helper'

describe "Scene Model" do
  let(:scene) { Scene.new }
  it 'can be created' do
    scene.should_not be_nil
  end
end
