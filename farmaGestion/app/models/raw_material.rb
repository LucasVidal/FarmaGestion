class RawMaterial < Element
  def self.raw_materials_not_included_in(inventory)
    return RawMaterial.all.reject{|e| inventory.elements.include?(e)}
  end
end
