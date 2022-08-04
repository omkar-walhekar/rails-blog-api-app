class Author < ApplicationRecord
  has_many :blogs

  validates_uniqueness_of :username, :email
end