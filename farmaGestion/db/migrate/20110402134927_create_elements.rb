class CreateElements < ActiveRecord::Migration
  def self.up
    create_table :elements do |t|
      t.string :type
      t.string :name
      t.integer :unit_id
      
      t.timestamps
    end
  end

  def self.down
    drop_table :elements
  end
end
