class CreateRuby < ActiveRecord::Migration[7.1]
  def change
    create_table :rubies do |t|
      t.string :lesson 
      t.string :topic
      t.string :link
      t.timestamps
    end
  end
end
