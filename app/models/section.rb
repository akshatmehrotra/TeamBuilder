class Section < ActiveRecord::Base
  validates :number, presence: true
  validates :number, uniqueness: true

  # has_many :classes
end
