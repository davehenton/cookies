require_relative "../cookie"
ls
describe Cookie do
  let(:cookie) { Cookie.new("chocolate chip") }

  it 'has a readable cookie type' do
    expect(cookie.type).to eq "chocolate chip"
  end

  it 'starts out with a readable doughy state' do
    expect(cookie.baked).to eq :doughy
  end

  it 'has a default optimum bake time of 15' do
      expect(cookie.bake_time).to eq 15
  end


end


FIXME
DEBUG
