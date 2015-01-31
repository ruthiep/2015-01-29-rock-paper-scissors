require_relative 'rockpaperscissors'
require 'minitest/autorun'

class PlayerTest < Minitest::Test
  
  def test_simple_input_with_expected_integer_output
    p = Player.new
    assert_equal( 3, cs.split_the_bill )
  end
  
  def test_if_rounding_works_appropriately
    cs = CheckSplitter.new(100, 15, 16)
    assert_equal( 8, cs.split_the_bill )
  end
  
  def test_if_invalid_party_size_handled_correctly
    cs = CheckSplitter.new(30, 15, -2)
    assert_equal( 35, cs.split_the_bill)
  end
  
end