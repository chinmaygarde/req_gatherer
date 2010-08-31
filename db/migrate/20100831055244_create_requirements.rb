class CreateRequirements < ActiveRecord::Migration
  def self.up
    create_table :requirements do |t|
      t.string :title
      t.text :description
      t.text :preconditions
      t.text :postconditions
      t.text :steps_to_use_case
      t.text :special_cases
      t.text :potential_issues

      t.timestamps
    end
  end

  def self.down
    drop_table :requirements
  end
end
