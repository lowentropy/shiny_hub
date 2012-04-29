class SceneView
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Versioning
  
  field :name, type: String
  field :position, type: Vector
  field :direction, type: Vector
  field :focus, type: String
  field :anchor, type: String
  field :up, type: Vector
  field :field_of_view, type: Float
  field :size, type: Array
  
  embedded_in :scene
  
  validates_presence_of :name, :field_of_view, :size
end