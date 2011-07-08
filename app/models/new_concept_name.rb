class NewConceptName < ActiveRecord::Base
  set_table_name  :new_concept_names
  set_primary_key :concept_id

  belongs_to :new_concept, :class_name => 'NewConcept', :conditions => {:retired => 0}
end
