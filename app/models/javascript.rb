class JavaScript < ApplicationRecord
  validates :lesson, presence: true
  validates :topic, presence: true
  validates :link, presence: true

end