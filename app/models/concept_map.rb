class ConceptMap < ActiveRecord::Base
  set_table_name :concept_maps

  def self.update_records(old_concept_name, new_concept_name)

    old_concept = OldConcept.find_by_name(old_concept_name)
    new_concept = NewConcept.find_by_name(new_concept_name)

    concept_mapping = self.new()

    concept_mapping.old_concept_id  = old_concept.concept_id
    #concept_mapping.old_concept_name       = old_concept.name
    #concept_mapping.old_concept_voided    = old_concept.voided

    concept_mapping.new_concept_id = new_concept.concept_id
    #concept_mapping.new_concept_name       = new_concept.name
    concept_mapping.new_concept_retired    = new_concept.retired

    old_concept.voided = 1
    new_concept.voided = 1

    old_concept.save
    new_concept.save
    concept_mapping.save
  end
end
