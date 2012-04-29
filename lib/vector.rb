class Vector < Struct.new(:x, :y, :z)
  include Mongoid::Fields::Serializable
  
  def to_a
    [x, y, z]
  end
  
  def deserialize array
    Vector.new *array
  end
  
  def serialize vector
    vector.to_a
  end
end
