class CreateOldConceptNames < ActiveRecord::Migration
=begin
  def self.up
    create_table :old_concept_names do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :old_concept_names
  end
=end
end
