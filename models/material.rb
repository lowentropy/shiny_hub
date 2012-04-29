class Material
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Versioning
  
  field :name, type: String
  field :absorption, type: Color
  field :refractive_index, type: Float
  
  validates_presence_of :name, :absorption, :refractive_index
  validates_uniqueness_of :name, case_sensitive: false
end
