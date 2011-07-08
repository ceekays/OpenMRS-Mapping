class OldDrug < ActiveRecord::Base
  set_table_name  :old_drugs
  set_primary_key :drug_id

  def self.get_all_drug_names_and_ids
    self.find :all, :select=> :name, :conditions => ["voided = ?", 0], :order => "name ASC"
  end
end
