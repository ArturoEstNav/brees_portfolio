class Project < ApplicationRecord
  validates :name, :description, :url, presence: true
end
