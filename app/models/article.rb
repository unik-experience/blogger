class Article < ActiveRecord::Base
	 self.per_page = 2
  belongs_to :category
end
