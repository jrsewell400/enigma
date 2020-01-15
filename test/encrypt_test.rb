require 'simplecov'
SimpleCov.start
require 'minitest/autorun'
require 'minitest/pride'
require './lib/encrypt'

class EncryptTest < Minitest::Test

  def setup
    @encrypt = Encrypt.new("hello world", "02715", "040895")
  end

  def test_encrypt_exists
    assert_instance_of Encrypt, @encrypt
  end

end
