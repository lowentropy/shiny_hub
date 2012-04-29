class Reflector
  include Mongoid::Document
  embedded_in :surface
end
