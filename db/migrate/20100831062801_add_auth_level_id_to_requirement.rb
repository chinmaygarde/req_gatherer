class AddAuthLevelIdToRequirement < ActiveRecord::Migration
  def self.up
    add_column :requirements, :auth_level_id, :integer
  end

  def self.down
    remove_column :requirements, :auth_level_id
  end
end
