class CreateElementsInventoryTemplatesJoinTable < ActiveRecord::Migration
  def self.up
      create_table :elements_inventory_templates, :id => false do |t|
        t.integer :element_id
        t.integer :inventory_template_id
      end
    end

    def self.down
      drop_table :elements_inventory_templates
    end
end