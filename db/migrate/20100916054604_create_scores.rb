class CreateScores < ActiveRecord::Migration
  def self.up
    create_table :scores do |t|
      t.string :title
      t.datetime :added
      t.boolean :private
      t.references :user
      #for file attachments
      t.string :sample_file_name
      t.string :sample_content_type
      t.integer :sample_file_size
      t.datetime :sample_updated_at

      #for the git repo
      t.string :repo

      t.timestamps
    end
  end

  def self.down
    drop_table :scores
  end
end
