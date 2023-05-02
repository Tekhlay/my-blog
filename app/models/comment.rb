class Comment < ApplicationRecord
    belongs_to :author, foreign_key: :author_id, class_name: 'User'
    belongs_to :post, foreign_key: :post_id, class_name: 'Post'

    def update_comment_counter
        post.increment!(:comments_counter)
    end
    
    private :update_comment_counter
end