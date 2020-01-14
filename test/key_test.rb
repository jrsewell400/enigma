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


end
