class PostEditor < ApplicationRecord
  belongs_to :post
  belongs_to :editor

  validates :editor_id, uniqueness: { scope: :post_id }
end
