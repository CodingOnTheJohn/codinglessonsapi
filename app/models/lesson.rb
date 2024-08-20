class Lesson < ApplicationRecord
  enum lesson_type: { ruby: 0, javascript: 1, interview: 2 }

  validates :lesson, presence: true
  validates :topic, presence: true
  validates :link, presence: true
  validates :lesson_type, presence: true
end