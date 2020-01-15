require_relative 'key'
require_relative 'offset'

class Encrypt
  attr_reader :message, :key, :date

  def initialize(message, key, date)
    @message = message
    @key = key
    @date = date
  end

end
