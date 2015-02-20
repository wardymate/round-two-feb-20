require 'wolf_on_commercial_street'


describe Wolf do

  wolf = Wolf.new
  stockprice = [10,2,5,8,9,1,6,7,8,10]
  result = {buy_day: 5, sell_day: 9}
  stockprice1 = [10,1,5,8,9,1,6,7,8,6]
  result1 = {buy_day: 1, sell_day: 4}

  it 'should accept an array' do
    expect(wolf.input([1,2,3])).to eq [1,2,3]
  end

  it 'should compare the difference of two elements' do
    expect(wolf.difference(stockprice,0,1)).to eq -8
  end

  it 'should return the highest differenct' do
    expect(wolf.runner(stockprice)).to eq result
  end

  it 'should return the highest differenct' do
    expect(wolf.runner(stockprice1)).to eq result1
  end

end
