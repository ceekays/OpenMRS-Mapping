class OldConcept < ActiveRecord::Base
  set_table_name  :old_concepts
  set_primary_key :concept_id

  has_many :old_concept_names, :conditions => {:voided => 0}

  def self.find_by_name(concept_name)
    self.find :first,
              :conditions => ["old_concepts.retired = 0 AND old_concepts.voided = 0 AND old_concepts.name =?", "#{concept_name}"]
  end
  

  def self.get_all_concept_names_and_ids
    self.find :all, :select=> :name, :conditions => ["voided = ?", 0], :order => "name ASC"
  end

end
