class CreateScores < ActiveRecord::Migration
  def self.up
    create_table :scores do |t|
      t.string :title
      t.datetime :added
      t.boolean :private
      t.User :author

      t.timestamps
    end
  end

  def self.down
    drop_table :scores
  end
end
