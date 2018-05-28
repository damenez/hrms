class Personnel < ApplicationRecord
  has_many :dependents, :dependent => :delete_all

  def position_description
  	return Position.where(code: self.pos_code).pluck(:description)
  end
end
