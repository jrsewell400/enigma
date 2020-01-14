require 'simplecov'
SimpleCov.start
require 'minitest/autorun'
require 'minitest/pride'
require './lib/key'

class KeyTest < Minitest::Test

  def setup
    @key = Key.new("02715")
  end

  def test_key_exists
    assert_instance_of Key, @key
  end
end
