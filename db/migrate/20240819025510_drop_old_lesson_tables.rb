class DropOldLessonTables < ActiveRecord::Migration[7.1]
  def change
    drop_table :ruby_lessons, if_exists: true
    drop_table :javascript_lessons, if_exists: true
    drop_table :interview_questions, if_exists: true
  end
end
