require 'test_helper'

class PostTest < ActiveSupport::TestCase
  test 'has timestamp for creation' do
    puts posts(:one).created_at
    assert posts(:one).created_at?
  end

  test 'name has to be unique' do
    one = posts(:one)
    post = Post.new(title: one.title, body: 'test')
    assert post.invalid?
  end

  test 'need both title and body' do
    no_title = Post.new(body: 'test')
    assert no_title.invalid?

    no_body = Post.new(title: 'test')
    assert no_body.invalid?
  end
end
