class CreateConceptMaps < ActiveRecord::Migration
  def self.up
    create_table :concept_maps do |t|
      t.integer :old_concept_id
      #t.integer :old_concept_concept_id
      #t.string  :old_concept_name
      #t.integer :old_concept_voided
      t.integer :new_concept_id
      #t.integer :new_concept_concept_id
      #t.string  :new_concept_name
      t.integer :new_concept_retired

      t.timestamps
    end
  end

  def self.down
    drop_table :concept_maps
  end
end
