class AddStatusIdToRequirement < ActiveRecord::Migration
  def self.up
    add_column :requirements, :status_id, :integer
  end

  def self.down
    remove_column :requirements, :status_id
  end
end
