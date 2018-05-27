class Personnel < ApplicationRecord
  has_many :dependents, :dependent => :delete_all
end
