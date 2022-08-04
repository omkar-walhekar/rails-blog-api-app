class Like < ApplicationRecord
  belongs_to :author
  belongs_to :blog

  validates_uniqueness_of :author, scope: :blog
end