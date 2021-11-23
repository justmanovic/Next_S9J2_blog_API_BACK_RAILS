class Article < ApplicationRecord
  validates :title, presence: true
  validates :content, presence: true


  belongs_to :user
  has_many :comments, foreign_key: "article_id", dependent: :destroyend
end
