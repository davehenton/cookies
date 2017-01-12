require_relative 'cookie'

class PeanutButter < Cookie
  attr_reader :bake_time, :type, :baked

  def initialize
    @type = "peanut butter"
    @bake_time = 20
  end
end
