class CreateWoots < ActiveRecord::Migration
  def self.up
    create_table :woots do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :woots
  end
end
