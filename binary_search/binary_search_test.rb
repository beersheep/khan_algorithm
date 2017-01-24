require "minitest/autorun"
require "minitest/reporters"
require_relative "./binary_search"

Minitest::Reporters.use!

class TestBinarySearch < Minitest::Test
  def test_array_respond_to_binary_search
    assert_respond_to(Array.new, :binary_search)
  end

  def test_binary_search_1
    array = [1, 2, 3, 4]
    result = array.binary_search(2)

    assert_equal(1, result)
  end
  
  def test_binary_search_2
    array = (1..100).to_a.select(&:odd?)
    result = array.binary_search(65)

    assert_equal(32, result)
  end

  def test_binary_search_not_found
    array = (1..100).to_a.select(&:odd?)
    result = array.binary_search(66)

    assert_equal(-1, result)
  end
end

