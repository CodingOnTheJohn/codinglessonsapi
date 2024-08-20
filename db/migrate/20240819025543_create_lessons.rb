class CreateLessons < ActiveRecord::Migration[7.1]
  def change
    create_table :lessons do |t|
      t.string :lesson
      t.string :topic
      t.string :link
      t.integer :lesson_type

      t.timestamps
    end
  end
end
