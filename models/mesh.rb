class Mesh
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Versioning
  
  field :name, type: String
  field :subdivisions, type: Fixnum
  field :vertices, type: Array
  field :faces, type: Array
  field :creases, type: Array
  
  validates_presence_of :name, :vertices, :faces
  validates_uniqueness_of :name, case_sensitive: false
end
