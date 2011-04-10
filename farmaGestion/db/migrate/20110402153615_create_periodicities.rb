class CreatePeriodicities < ActiveRecord::Migration
  def self.up
    create_table :periodicities do |t|
      t.string :name
      t.string :detail, :default=>''
      
      t.timestamps
    end
  end

  def self.down
    drop_table :periodicities
  end
end
