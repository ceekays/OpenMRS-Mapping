class NewConcept < ActiveRecord::Base
  set_table_name  :new_concepts
  set_primary_key :concept_id

  has_many  :concept_names, :class_name => 'NewConceptName', :foreign_key => :concept_id
  has_many  :new_concept_names, :conditions => {:voided => 0}

  def self.find_by_name(concept_name)
    concept = self.find :first,
              :joins      => 'INNER JOIN new_concept_names ON new_concept_names.concept_id = new_concepts.concept_id',
              :conditions => ["new_concepts.retired = 0 AND new_concept_names.voided = 0 AND new_concept_names.name =?", "#{concept_name}"]
    concept_id = concept.concept_id

    # hack to help in voiding concepts. Otherwise, Rails cannot void joined tables.
    #TODO: Find a better fix. requering is not ideal
    self.find(concept_id)
  end

  def self.get_concepts_by_name(concept_name)
    search_keys = concept_name.gsub(' + ',' ').gsub('(','').gsub(')','').gsub('/',' ').gsub(' - ',' ').gsub(' mg ',' ').gsub(', ',' ').split.to_a.uniq

    # remove unnecessary terms to make the search more efficient and effective
    #TODO: Add as many excluded terms as possible but take care because some terms are also concepts on their own e.g. all
    excluded_terms  = ["to", "is", "the", "has", "was", "are",
                      "have", "on", "of", "not", "other",
                      "in", "or", "an", "with", "between"]
    search_keys.delete_if { |key,value| excluded_terms.include? key.downcase }

    # is the length of 'search_keys' more than 1
    # then the following are just modifiers/qualifiers and not necessarily concepts
    extra_modifiers = ["all", "other", "a", "b", "c"]
    search_keys.delete_if { |key,value| (extra_modifiers.include? key.downcase) && search_keys.length > 1 }

    search_keys.delete_if { |key,value| key.match(/^([\+\-\<\=\>]?[0-9\.]+)(.*)$/) }
    search_string = "name LIKE '%#{search_keys.first}%'"
    search_keys   = search_keys[1...search_keys.length]

    search_keys.each do |key|
      search_string += " OR name LIKE '%#{key}%'"
    end

    self.find_by_sql("SELECT  name FROM new_concepts INNER JOIN new_concept_names ON new_concept_names.concept_id = new_concepts.concept_id WHERE #{ search_string} AND new_concepts.voided = 0 ORDER BY name ASC")
  end
end
