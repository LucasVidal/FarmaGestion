class CreateInventoryTemplates < ActiveRecord::Migration
  def self.up
    create_table :inventory_templates do |t|
      t.string :name
      t.integer :periodicity_id

      t.timestamps
    end
  end

  def self.down
    drop_table :inventory_templates
  end
end
