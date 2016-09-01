require_relative 'cookie'

class ChocolateChip < Cookie
  attr_reader :bake_time, :type, :baked

  def initialize
    @type = "chocolate chip"
    @bake_time = 15
    @baked = :doughy
  end
end
