require 'test_helper'

class PostTest < ActiveSupport::TestCase

  test 'has timestamp for creation' do
    puts posts(:one).created_at
    assert posts(:one).created_at?
  end
end
