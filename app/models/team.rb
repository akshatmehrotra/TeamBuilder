class Team < ActiveRecord::Base

  validates :name, presence: true
  validates :class_id, presence: true

  belongs_to :class

  has_many :memberships
  has_many(:students, { :through => :memberships })

end
