require('minitest/autorun')
require('minitest/rg')
require_relative('../library.rb')

class TestLibrary <  Minitest::Test

  def setup
    @book1 = {
      title: "lord_of_the_rings",
      rental_details: {
        student_name: "Jeff",
        date: "01/12/16"
      }
    }

    @book2 =   {
      title: "day of the triffids",
      rental_details: {
        student_name: "colin",
        date: "01/12/19"
      }
    }

    @books = [@book1, @book2]
    @library = Library.new(@books)

  end

  def test_can_find_by_title
    assert_equal(@book2, @library.find_by_title("day of the triffids"))
  end

  def test_can_find_rental_details
    assert_equal(@book2[:rental_details], @library.rental_details("day of the triffids"))
  end

  def test_add_book
    @library.add_book("On The Road")
    assert_equal(3, @library.books.count)
  end

  def test_rent_book
    @library.rent_book("day of the triffids", "Louise", "24/5/19")
    rental_details = @library.rental_details("day of the triffids")
    assert_equal("Louise", rental_details[:student_name])
    assert_equal("24/5/19", rental_details[:date])


  end

end
