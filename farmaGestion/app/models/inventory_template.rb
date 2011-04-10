class InventoryTemplate < ActiveRecord::Base
  belongs_to :periodicity
  has_and_belongs_to_many :elements
end
