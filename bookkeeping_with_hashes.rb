def book_keeper
    books_array = [
        {:title=>"Harry Potter and the Philosopher's Stone", :author=>"J.K. Rowling", :year=>1997},
        {:title=>"Harry Potter and the Chamber of Secrets", :author=>"J.K. Rowling", :year=>1998},
        {:title=>"Harry Potter and the Prisoner of Azkaban", :author=>"J.K. Rowling", :year=>1999}
    ]

    book_keeper = []
    books_array.each do |book|
        book_keeper << "#{book[:title]} by #{book[:author]} (#{book[:year]})"
    end

    return book_keeper
end

book_keeper = book_keeper()
p book_keeper