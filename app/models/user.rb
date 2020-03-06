class User < ApplicationRecord
    has_secure_password
    has_many :posts, dependent: :delete_all
    has_many :items
    has_many :comments, through: :posts
    has_many :likes, dependent: :destroy
    validates :username, uniqueness: true 

    def self.total_users
        User.count
    end

    def self.most_posts
        u = nil
        i = 0 
        self.all.each do |user|
            if user.posts.count >= i
                u = user
                i = user.posts.count
            end
        end
        u
    end

    def self.most_likes
        u = nil
        i = 0 
        self.all.each do |user|
            if user.likes.count >= i
                u = user
                i = user.likes.count
            end
        end
        u
    end

    def self.lucky
        self.all[rand(self.all.count)]
    end
end
