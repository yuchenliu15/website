class Post < ApplicationRecord
    has_rich_text :body
    validates :title, :body, presence: true
    validates :title, uniqueness: true
end
