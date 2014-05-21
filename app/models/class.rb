class Class < ActiveRecord::Base
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :team_size, presence: true

  belongs_to :department
  has_many :teams
  has_many :quarters
  has_many :sections
  has_many :enrolments
  has_many(:students, { :through => :enrolments })
end
