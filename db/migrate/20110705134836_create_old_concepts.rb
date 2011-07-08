class CreateOldConcepts < ActiveRecord::Migration
=begin
  def self.up
    create_table :old_concepts do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :old_concepts
  end
=end
end
