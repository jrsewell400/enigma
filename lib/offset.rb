class Offset
  attr_reader :date

  def initialize
    @date = Time.now.strftime("%d%m%y")
    @offset_hash = {:A => "", :B => "", :C => "", :D => ""}
  end

  def generate_offset(date)
    date_squared = (date.to_i * date.to_i)
    offset = date_squared.to_s[-4..-1].split(//)
    @offset_hash[:A] += offset[0]
    @offset_hash[:B] += offset[1]
    @offset_hash[:C] += offset[2]
    @offset_hash[:D] += offset[3]
    @offset_hash
  end

end
