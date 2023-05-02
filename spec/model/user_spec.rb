require 'rails_helper'

RSpec.describe User, type: :model do
  subject do
    User.new(
      name: 'John',
      photo: 'https://www.google.com',
      bio: 'I am a teacher',
      posts_counter: 3
    )
  end

  before { subject.save }

  it 'name should be present' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'should return posts_counter' do
    expect(subject.posts_counter).to eq(3)
  end

  it 'should return most recent posts' do
    expect(subject.most_recent_posts).to eq(subject.posts.order(created_at: :desc).limit(3))
  end

  it 'posts_counter should be an integer' do
    expect(subject.posts_counter).to be_an(Integer)
  end
end
