require './lib/author'

class Library

  attr_reader :name, :authors

  def initialize(name)
    @name = name
    @authors = []
    @books = []
  end

  def add_author(author)
    @authors << author
  end

  def books
    @authors.flat_map do |author|
      author.books.each {|book| book}
    end
  end

end
