class Article < ActiveRecord::Base
  validates :title, presence: true
  self.per_page = 2
  belongs_to :category
  validates :category, presence: true
end
