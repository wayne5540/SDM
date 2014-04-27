class Material < ActiveRecord::Base
  belongs_to :mtype
  has_many :drink_materials
  has_many :drinks, :through => :drink_materials
end
