class Tweet < ActiveRecord::Base

  validates :user_id, presence: true
  validates :content, presence: true, length: {maximum: 140}

  belongs_to :user

  has_many :current_favorites, class_name: 'Favorite', foreign_key: 'tweet_id', dependent: :destroy
  has_many :favs, through: :current_favorites, source: :tweet

end