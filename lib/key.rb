class Key
  attr_reader :key

  def initialize(key = nil)
    @key = key
    @key_hash = {:A => "", :B => "", :C => "", :D => ""}
  end

  def generate_key(key)
    if key.length == 5
      @key = key
    else
      @key = 5.times.map{Random.rand(10)}.join.to_s
    end
  end

  def key_shift
    @key_hash[:A] += @key[0..1]
    @key_hash[:B] += @key[1..2]
    @key_hash[:C] += @key[2..3]
    @key_hash[:D] += @key[3..4]
    @key_hash
  end

end
