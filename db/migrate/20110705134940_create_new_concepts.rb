class CreateNewConcepts < ActiveRecord::Migration
=begin
  def self.up
    create_table :new_concepts do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :new_concepts
  end
=end
end
