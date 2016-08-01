class Link < ActiveRecord::Base
  validates :url, format: {with: /http/}, uniqueness: true

  belongs_to :user
  has_many :comments
end
