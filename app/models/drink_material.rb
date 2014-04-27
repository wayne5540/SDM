class DrinkMaterial < ActiveRecord::Base
  belongs_to :drink
  belongs_to :material
end
