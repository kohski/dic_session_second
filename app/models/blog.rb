class Blog < ApplicationRecord
  belongs_to :user
  has_many :favorites,dependent: :destroy
  has_many :favorite_users, through: :favorites, source: :user

  validates :title,length:{minimum:1,maximum:50}
  validates :content,length:{minimum:1,maximum:140}
end
