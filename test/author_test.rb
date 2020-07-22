require './lib/book'
require './lib/author'
require 'minitest/autorun'
require 'minitest/pride'

class AuthorTest < Minitest::Test
  def test_it_exists
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    assert_instance_of Author, charlotte_bronte
  end
end
