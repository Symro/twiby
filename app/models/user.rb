class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :username, presence: true, length: {maximum: 30}, uniqueness: true
  validates :email, presence: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }, uniqueness: true

  has_many :tweets
  has_many :favorites

  has_many :active_follows, class_name: 'Follow', foreign_key: 'follower_id', dependent: :destroy
  has_many :following, through: :active_follows, source: :followed

  has_many :passive_follows, class_name: 'Follow', foreign_key: 'followed_id', dependent: :destroy
  has_many :followers, through: :passive_follows, source: :follower

end
