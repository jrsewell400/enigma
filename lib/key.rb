class Key
  attr_reader :key

  def initialize(key = nil)
    @key = key
  end

  def generate_key(key)
    if key.length == 5
      @key = key
    end
  end

end
