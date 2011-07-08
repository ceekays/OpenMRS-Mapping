class AddVoidedFields < ActiveRecord::Migration
  def self.up
    add_column :old_drugs, :voided, :integer, :default => 0
    add_column :new_drugs, :voided, :integer, :default => 0
    add_column :old_concepts, :voided, :integer, :default => 0
    add_column :new_concepts, :voided, :integer, :default => 0
  end

  def self.down
    remove_column :old_drugs,     :voided
    remove_column :new_drugs,     :voided
    remove_column :old_concepts,  :voided
    remove_column :new_concepts,  :voided
  end
end
