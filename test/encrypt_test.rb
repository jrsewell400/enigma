require 'simplecov'
SimpleCov.start
require 'minitest/autorun'
require 'minitest/pride'
require './lib/encrypt'

class EncryptTest < Minitest::Test

  def setup
    @encrypt = Encrypt.new("hello world", "02715", "040895")
    @key = Key.new("02715")
    @offset = Offset.new
  end

  def test_it_exists
    assert_instance_of Encrypt, @encrypt
    assert_instance_of Key, @key
    assert_instance_of Offset, @offset
  end

  def test_encrypt_has_attributes
    assert_equal "hello world", @encrypt.message
    assert_equal "02715", @encrypt.key
    assert_equal "040895", @encrypt.date
  end

  def test_string_to_int_converter_method_converts_strings_to_ints
    hash = { :A => "5" }
    expected = { :A => 5 }
    assert_equal expected, @encrypt.string_to_int_converter(hash)
  end

  def test_final_offset_combines_key_and_offset_hashes
    expected = { :A => 3, :B => 27, :C => 73, :D => 20 }
    assert_equal expected, @encrypt.final_offset
  end
end
