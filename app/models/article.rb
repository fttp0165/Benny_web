class Article < ApplicationRecord
 belongs_to :category,optional: true
 has_rich_text :content
end
