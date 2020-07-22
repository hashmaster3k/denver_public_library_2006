require './lib/book'

class Author

  attr_reader :name, :books

  def initialize(author)
    @first_name = author[:first_name]
    @last_name = author[:last_name]
    @name = "#{@first_name} #{@last_name}"
    @books = []
  end

  def write(title, publication_date)

    book = Book.new({title: title,
                     publication_date: publication_date,
                     author_first_name: @first_name,
                     author_last_name: @last_name})

    @books << book
    book
  end

end
