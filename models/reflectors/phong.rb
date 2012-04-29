class Phong < Reflector  
  field :diffuse, type: Color
  field :specular, type: Color
  field :shininess, type: Float
  
  validates_presence_of :diffuse, :specular, :shininess
  validates_numericality_of :shininess, greater_than: 0
end
