class Post < ActiveRecord::Base

  belongs_to :user
  has_many :comments, :dependent => :destroy
  has_many :sources, :dependent => :destroy
  has_many :datasets, :through => :sources, :dependent => :destroy

  validates :title, presence: true
  validates :image_url, presence: true

end
