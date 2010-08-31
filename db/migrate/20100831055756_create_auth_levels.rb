class CreateAuthLevels < ActiveRecord::Migration
  def self.up
    create_table :auth_levels do |t|
      t.string :title

      t.timestamps
    end
  end

  def self.down
    drop_table :auth_levels
  end
end
