class CreateNewDrugs < ActiveRecord::Migration
=begin
  def self.up
    create_table :new_drugs do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :new_drugs
  end
=end
end
