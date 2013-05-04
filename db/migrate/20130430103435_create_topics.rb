class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.integer :user_id
      t.string :region
      t.string :school_type
      t.string :school_name
      t.string :title
      t.text :content

      t.timestamps
    end
    add_index :topics, :user_id
    add_index :topics, :title
    add_index :topics, :school_type
    add_index :topics, :school_name
    add_index :topics, :region
  end
end
