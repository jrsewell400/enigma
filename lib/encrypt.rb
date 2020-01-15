require_relative 'key'
require_relative 'offset'

class Encrypt
  attr_reader :message, :key, :date

  def initialize(message, key, date)
    @message = message
    @offset = Offset.new
    @key = key
    @date = date
  end

  def string_to_int_converter(hash_to_convert)
    hash_to_convert.each { |key, value| hash_to_convert[key] = value.to_i }
  end

  def final_offset
    key = Key.new(@key).key_shift
    offset = @offset.generate_offset(@date)
    key_to_int = string_to_int_converter(key)
    offset_to_int = string_to_int_converter(offset)
    final_offset = key_to_int.merge(offset_to_int) { |key, oldval, newval| oldval + newval }
  end
end
