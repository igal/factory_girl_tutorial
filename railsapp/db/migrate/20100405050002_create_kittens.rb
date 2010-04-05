class CreateKittens < ActiveRecord::Migration
  def self.up
    create_table :kittens do |t|
      t.string :name
      t.integer :legs
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :kittens
  end
end
