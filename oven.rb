require_relative 'cookie'

class Oven
  def initialize(cookie_batch=[])
    @cookie_batch = cookie_batch
  end

  def bake_cookies(time)
    @cookie_batch.map {|cookie| bake(cookie, time) }
  end

  def bake(cookie, time)
    if time == 0
      cookie.baked = :doughy
    elsif time < cookie.bake_time
      cookie.baked = :almost_ready
    elsif time == cookie.bake_time
      cookie.baked = :ready
    elsif time > cookie.bake_time
      cookie.baked = :burned
    end
  end

  def cookies_done?
    @cookie_batch.all? { |cookie| cookie.baked == :ready }
  end

  def cookie_status
    @cookie_batch.each { |cookie| puts "#{cookie.type} is #{cookie.baked}" }
  end

  def cookie_status
    @cookie_batch.each { |cookie| puts "#{cookie.type} is #{cookie.baked}" }
  end
end

FIX ME
FIXME
