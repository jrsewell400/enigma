class Offset
  attr_reader :date

  def initialize
    @date = Time.now.strftime("%d%m%y")
  end

end
