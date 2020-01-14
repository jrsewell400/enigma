require 'simplecov'
SimpleCov.start
require 'minitest/autorun'
require 'minitest/pride'
require './lib/offset'

class OffsetTest < Minitest::Test

  def setup
    @offset = Offset.new
  end

  def test_offset_exists
    assert_instance_of Offset, @offset
  end

  def test_offset_has_attributes
    assert_equal Time.now.strftime("%d%m%y"), @offset.date
  end

  def test_it_can_generate_offset
    expected = { :A => "4", :B => "4", :C => "0", :D => "0"}
    assert_equal expected, @offset.generate_offset("130120")
  end
end
