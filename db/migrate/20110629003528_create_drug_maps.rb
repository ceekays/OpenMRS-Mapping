class CreateDrugMaps < ActiveRecord::Migration
  def self.up
    create_table :drug_maps do |t|
      t.integer :old_drug_id
      t.integer :old_drug_concept_id
      t.string  :old_drug_name
      #t.integer :old_drug_voided
      t.integer :new_drug_id
      t.integer :new_drug_concept_id
      t.string  :new_drug_name
      t.integer :new_drug_retired

      t.timestamps
    end
  end

  def self.down
    drop_table :drug_maps
  end
end
