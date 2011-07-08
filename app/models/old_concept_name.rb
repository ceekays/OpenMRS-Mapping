class OldConceptName < ActiveRecord::Base
  set_table_name  :old_concept_names
  set_primary_key :concept_id

  belongs_to :old_concept, :conditions => {:retired => 0}

end
