class Project < ApplicationRecord
  validates :title, :description, :url, presence: true
end
