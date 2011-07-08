class CreateOldDrugs < ActiveRecord::Migration
=begin
  def self.up

    create_table :old_drugs do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :old_drugs
  end
=end
end
