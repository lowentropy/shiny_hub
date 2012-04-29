class Color < Struct.new(:r, :g, :b)
  include Mongoid::Fields::Serializable
  
  def to_a
    [r, g, b]
  end
  
  def deserialize array
    Color.new *array
  end
  
  def serialize color
    color.to_a
  end
end