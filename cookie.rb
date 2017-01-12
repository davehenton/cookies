class Cookie
  attr_reader :type, :bake_time
  attr_accessor :baked

  def initialize(type, bake_time=15)
    @type = type
    @bake_time = bake_time
    @baked = :doughy
  end

end
