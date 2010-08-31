class AddPriorityToRequirement < ActiveRecord::Migration
  def self.up
    add_column :requirements, :priority_id, :integer
  end

  def self.down
    remove_column :requirements, :priority_id
  end
end
