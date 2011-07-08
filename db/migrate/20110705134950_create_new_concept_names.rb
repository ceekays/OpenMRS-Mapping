class CreateNewConceptNames < ActiveRecord::Migration
=begin
  def self.up
    create_table :new_concept_names do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :new_concept_names
  end
=end
end
