class Student < ActiveRecord::Base
  validates :email, presence: true
  validates :name, presence: true
  validates :email, uniqueness: true
  validates :program_id, uniqueness: true


  belongs_to :program

  has_many :memberships
  has_many(:teams, { :through => :memberships })


  has_many :enrolments
  has_many(:classes, { :through => :enrolments })


end
