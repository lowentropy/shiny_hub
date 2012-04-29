class Surface
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Versioning
  
  field :name, type: String
  field :emissivity, type: Color
  field :absorptivity, type: Color
  
  embeds_one :reflector
  
  validates_presence_of :name, :emissivity, :absorptivity, :reflector
  validates_uniqueness_of :name, case_sensitive: false
end
