class User < ApplicationRecord
  has_many :articles, foreign_key: "user_id"
  has_many :comments, foreign_key: "user_id", dependent: :destroy

  devise :database_authenticatable,
         :jwt_authenticatable,
         :registerable,
         jwt_revocation_strategy: JwtDenylist
end