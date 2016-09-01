require_relative 'cookie'
require_relative 'oven'

chocolate_chip_cookie = Cookie.new("chocolate chip")
peanut_butter_cookie = Cookie.new("peanut butter")
sugar_cookie = Cookie.new("sugar")
m_and_m_cookie = Cookie.new("m&m", 20)

cookies = [chocolate_chip_cookie, peanut_butter_cookie, sugar_cookie, m_and_m_cookie]
cookie_batch = Oven.new(cookies)

cookie_batch.cookie_status
