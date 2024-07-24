class InterviewQuestion < ApplicationRecord
  validates :question, presence: true
  validates :topic, presence: true
  validates :link, presence: true
end