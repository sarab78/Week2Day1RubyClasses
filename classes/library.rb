class Library

  attr_reader :books


  def initialize(books)
    @books = books

  end

  def find_by_title(title)
    for book in @books
      if book[:title] == title
        return book
      end
    end

    return nil

  end

  def rental_details(title)
    book = find_by_title(title)
    return book[:rental_details] if book != nil
  end

  def add_book(title)
    book = {
      title: title,
      rental_details: {
        student_name: "",
        date: ""
      }
    }
    @books << book
  end
  def rent_book(title, student_name, date)
    new_rental_details = {
      student_name: student_name,
      date: date
    }
    book = find_by_title(title)
    book[:rental_details] = new_rental_details
  end


end
