require_relative 'cookie'

class MandM < Cookie
  attr_reader :bake_time, :type, :baked

  def initialize
    @type = "m&m"
    @bake_time = 25
    @baked = :doughy
  end
end
