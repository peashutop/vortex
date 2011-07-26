class CreatePeople < ActiveRecord::Migration
  def self.up
    create_table :people do |t|
      t.string :name_first
      t.string :name_last
      t.string :name_prefix
      t.string :name_suffix

      t.timestamps
    end
  end

  def self.down
    drop_table :people
  end
end
