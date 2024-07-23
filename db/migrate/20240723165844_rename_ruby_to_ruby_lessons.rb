class RenameRubyToRubyLessons < ActiveRecord::Migration[7.1]
  def change
    rename_table :rubies, :ruby_lessons
  end
end
