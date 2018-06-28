class Dependent < ApplicationRecord
  belongs_to :personnel
  validates :name, :presence => true
  validates :relationship, :presence => true
end
