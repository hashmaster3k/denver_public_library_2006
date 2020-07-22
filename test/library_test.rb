require './lib/author'
require './lib/library'
require 'minitest/autorun'
require 'minitest/pride'

class LibraryTest < Minitest::Test
  def test_it_exists
    dpl = Library.new("Denver Public Library")
    assert_instance_of Library, dpl
  end

  def test_has_name
    dpl = Library.new("Denver Public Library")
    assert_equal "Denver Public Library", dpl.name
  end
end
