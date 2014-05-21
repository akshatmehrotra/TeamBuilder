class Enrolment < ActiveRecord::Base
  validates :class_id, presence: true
  validates :student_id, presence: true

  belongs_to :student
  belongs_to :class
end
