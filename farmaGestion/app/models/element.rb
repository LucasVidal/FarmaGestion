class Element < ActiveRecord::Base
  belongs_to :unit
  has_and_belongs_to_many :inventory_templates
end
