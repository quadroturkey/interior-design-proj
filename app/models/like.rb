class Like < ApplicationRecord
  belongs_to :post
  belongs_to :user

  def self.num_likes
    self.all.count
  end
end
