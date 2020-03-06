class Post < ApplicationRecord
    belongs_to :user
    has_many :likes, dependent: :destroy
    has_one_attached :picture
    has_many :comments


    def self.number_of_posts
        self.all.count
    end

    def self.most_liked_post
        l_post = nil
        l_count = 0
        self.all.each do |post|
            if post.likes.count > l_count
                l_post = post
                l_count = post.likes.count
            end
        end
        l_post
    end
end
