class Blog < ApplicationRecord
  belongs_to :author
  has_many :likes
  has_many :comments

  validates_uniqueness_of :title
end