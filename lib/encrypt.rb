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
    hash_to_convert.each do |key, value|
      hash_to_convert[key] = value.to_i
    end
  end
end
