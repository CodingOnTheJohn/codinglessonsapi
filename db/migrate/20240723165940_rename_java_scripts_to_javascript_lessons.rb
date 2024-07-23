class RenameJavaScriptsToJavascriptLessons < ActiveRecord::Migration[7.1]
  def change
    rename_table :java_scripts, :javascript_lessons
  end
end
