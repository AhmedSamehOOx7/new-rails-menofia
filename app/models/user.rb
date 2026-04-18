class User < ApplicationRecord
	has_many :posts, foreign_key: :creator_id, inverse_of: :creator, dependent: :destroy
	has_many :created_posts, class_name: "Post", foreign_key: :creator_id, inverse_of: :creator
end
