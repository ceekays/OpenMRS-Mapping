class NewDrug < ActiveRecord::Base
  set_table_name  :new_drugs
  set_primary_key :drug_id

  def self.get_drugs_by_name(drug_name)
    search_keys = drug_name.gsub(' + ',' ').gsub('(','').gsub(')','').gsub('/',' ').gsub(' - ',' ').gsub(' mg ',' ').gsub(', ',' ').split.to_a.uniq

    search_string = "name LIKE '%#{search_keys.first}%'"
    search_keys   = search_keys[1...search_keys.length]

    search_keys.each do |key|
      search_string += " OR name LIKE '%#{key}%'"
    end

    #data = self.find_by_sql("SELECT name FROM drugs_bart2 WHERE #{ search_string} AND voided='0' ORDER BY name ASC")
    data = self.find_by_sql("SELECT name FROM new_drugs WHERE #{ search_string} AND voided = 0 ORDER BY name ASC")
  end
end
