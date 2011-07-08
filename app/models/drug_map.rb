class DrugMap < ActiveRecord::Base
  set_table_name :drug_maps

  def self.update_records(old_drug_name, new_drug_name)

    old_drug = OldDrug.find_by_name(old_drug_name)
    new_drug = NewDrug.find_by_name(new_drug_name)

    drug_mapping = self.new()

    drug_mapping.old_drug_concept_id = old_drug.concept_id
    drug_mapping.old_drug_id         = old_drug.drug_id
    drug_mapping.old_drug_name       = old_drug.name
    #drug_mapping.old_drug_voided    = old_drug.voided

    drug_mapping.new_drug_concept_id = new_drug.concept_id
    drug_mapping.new_drug_id         = new_drug.drug_id
    drug_mapping.new_drug_name       = new_drug.name
    drug_mapping.new_drug_retired    = new_drug.retired

    old_drug.voided = 1
    new_drug.voided = 1

    old_drug.save
    new_drug.save
    drug_mapping.save
  end
end
