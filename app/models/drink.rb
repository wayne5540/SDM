class Drink < ActiveRecord::Base
  belongs_to :user
  has_many :drink_materials
  has_many :materials, :through => :drink_materials

end
