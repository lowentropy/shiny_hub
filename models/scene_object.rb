class SceneObject
  include Mongoid::Document
  include Mongoid::Timestamps
  
  embedded_in :scene

  field :name, type: String
  
  belongs_to :material
  belongs_to :surface
  
  validates_presence_of :name, :material, :surface
  validates_uniqueness_of :name, case_sensitive: false
end
