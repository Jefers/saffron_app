class CreatePeople < ActiveRecord::Migration
  def self.up
    create_table :people do |t|
      t.string :name
      t.text :description
      t.string :telephone
      t.integer :age
      t.datetime :last_seen
      t.boolean :active

      t.timestamps
    end
  end

  def self.down
    drop_table :people
  end
end
