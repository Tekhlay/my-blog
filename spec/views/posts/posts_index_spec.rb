require 'rails_helper'

RSpec.describe 'posts/index', type: :feature do
    before :each do
        @author = User.create(name: 'Tom', photo: 'https://picsum.photos/300/200', bio: 'Teacher from South Africa', posts_counter: 2)
        @first_post = Post.create(author: @author, title: 'Hello', text: 'This is my first post from Tom')
        @second_post = Post.create(author: @author, title: 'How are you?', text: 'This is my second post from Tom')
        @first_comment = Comment.create(post: @first_post, author: @author, text: 'First comment for Tom')
        @second_comment = Comment.create(post: @second_post, author: @author, text: 'Second comment for Tom')
        @first_like = Like.create(post: @first_post, author: @author)
        @second_like = Like.create(post: @second_post, author: @author)
        visit user_posts_path(@author)
    end

    it 'shows the author image' do
        expect(page).to have_css('img')
    end

    it 'shows the author name' do
        expect(page).to have_content(@author.name)
    end

    it 'shows the number of posts by the author' do
        expect(page).to have_content("Number of posts: #{@author.posts_counter}")
    end

end

