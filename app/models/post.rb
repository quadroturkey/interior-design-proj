class Post < ApplicationRecord
    belongs_to :user
    has_many :comments
    has_many :likes
    #has_one_attached :picture
    has_many_attached :pictures


    def thumbnail
        return self.picture.variant(resize: '300x300!').proccessed
    end

end
