require 'simplecov'

SimpleCov.start



require_relative '../cookie'
require_relative '../oven'


describe Oven do
  let(:cookie) { Cookie.new("chocolate chip") }
  let(:batch) {Oven.new([cookie])}

  it "can bake uncooked cookies" do
    expect{batch.bake_cookies(15)}.to change {cookie.baked}
  end

  it "can check if all cookies are done" do
    expect(batch.cookies_done?).to eq false
    batch.bake_cookies(15)
    expect(batch.cookies_done?).to eq true
  end

  it "will burn cookies cooked too long" do
    batch.bake_cookies(20)
    expect(cookie.baked).to eq :burned
  end

  it "cookie will not be ready if not cooked long enough" do
    batch.bake_cookies(10)
    expect(cookie.baked).to eq :almost_ready
  end

  context "optional adjustment of cook time" do
    let(:slow_bake_cookie) {Cookie.new("m&m", 30)}
    let(:slow_cook_batch) {Oven.new([slow_bake_cookie])}

    it 'will accept an optional adjustment of the optimum bake time' do
      slow_cook_batch.bake_cookies(30)
      expect(slow_bake_cookie.baked).to eq :ready
    end

    it 'will burn the cookie if baked too long' do
      slow_cook_batch.bake_cookies(35)
      expect(slow_bake_cookie.baked).to eq :burned
    end

    it 'will not be ready if optimum bake time has not been reached' do
      slow_cook_batch.bake_cookies(20)
      expect(slow_bake_cookie.baked).to eq :almost_ready
    end
  end
end
