require './lib/book'
require './lib/author'
require 'minitest/autorun'
require 'minitest/pride'

class AuthorTest < Minitest::Test
  def test_it_exists
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    assert_instance_of Author, charlotte_bronte
  end

  def test_has_name
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    assert_equal "Charlotte Bronte", charlotte_bronte.name
  end

  def test_empty_books
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    assert_equal [], charlotte_bronte.books
  end

  def test_add_book
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    jane_eyre = charlotte_bronte.write("Jane Eyre", "October 16, 1847")
    assert_instance_of Book, jane_eyre
    assert_equal "Jane Eyre", jane_eyre.title

    #I know I wasn't suppoed to do this but didn't know how to test this otherwise
    villette = charlotte_bronte.write("Villette", "1853")
    require "pry"; binding.pry
    assert_equal [jane_eyre, villette], charlotte_bronte.books
  end
end
