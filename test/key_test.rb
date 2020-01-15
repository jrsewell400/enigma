require 'simplecov'
SimpleCov.start
require 'minitest/autorun'
require 'minitest/pride'
require './lib/key'

class KeyTest < Minitest::Test

  def setup
    @new_key = Key.new("02715")
  end

  def test_key_exists
    assert_instance_of Key, @new_key
  end

  def test_key_has_attributes
    assert_equal "02715", @new_key.key
  end

  def test_key_is_the_right_length
    assert_equal 5, @new_key.key.length
  end

  def test_key_can_be_entered_without_generating
    assert_equal "02715", @new_key.generate_key("02715")
  end

  def test_random_key_is_generated_if_incorrect_conditions_met_for_key
    new_key1 = Key.new("0271")
    new_key1.generate_key("0271")
    assert_equal 5, new_key1.key.length
  end

  def test_keys_can_be_shifted
    expected = { :A => "02", :B => "27", :C => "71", :D => "15"}
    assert_equal expected, @new_key.key_shift
  end

end
