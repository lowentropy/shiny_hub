class Scene
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Versioning

  field :name, type: String
  
  embeds_many :scene_objects
  embeds_many :scene_views
  
  validates_presence_of :name
  validates_uniqueness_of :name, case_sensitive: false
end
