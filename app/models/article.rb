class Article < ActiveRecord::Base
  belongs_to :user
  has_many :articlec_ategories
  has_many :categories, through: :article_categories
  
  validates :title, presence: true
  validates :content, presence: true
  validates :category, presence: true
end