class Personnel < ApplicationRecord
  has_many :dependents, :dependent => :delete_all
  validates :name, :presence => true

  def position_description
  	return Position.where(code: self.pos_code).first.description
  end
end
