class Book
  def title
    @title
  end

  def title=(string)
    @title = titlieze(string)
  end
  def titlieze(title)
    stop_words = %w(and in the of a an)
    title.capitalize.split.map{|w| stop_words.include?(w) ? w : w.capitalize}.join(' ')
  end
end

@book = Book.new
@book.title = "inferno"
puts @book.title
