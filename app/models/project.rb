class Project < ApplicationRecord
  has_one_attached :project_picture
  has_rich_text :project_content
  belongs_to :user
end
