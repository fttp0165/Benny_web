class Project < ApplicationRecord
  has_one_attached :project_picture
  belongs_to :user
end
